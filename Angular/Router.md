# Router

- Angular创建一个路由的项目

  - ```cmd
    ng new routing-app --routing --defaults
    ```

### 一、Angular Cli 默认创建的路由

1. app-routing.module.ts

   - 创建路由模块并导出

   ```typescript
   import { NgModule } from '@angular/core';
   import { Routes, RouterModule } from '@angular/router';
   
   const routes: Routes = [];
   
   @NgModule({
     //跟路由模块使用forRoot()、子路由模块使用forChild()
     imports: [RouterModule.forRoot(routes)],  
     exports: [RouterModule],
   })
   export class AppRoutingModule {}
   ```

   

2. app.module.ts

   - 导入路由，并写入imports数组中

```typescript
...
import { AppRoutingModule } from './app-routing.module'; // CLI 导入 AppRoutingModule
...

@NgModule({
  ...
  imports: [ AppRoutingModule ],
    //CLI 将 AppRoutingModule添加到AppModule的imports数组中  
})
export class AppModule { }
```



### 二、定义使用路由

- 路由的顺序很重要，因为 `Router` 在匹配路由时使用“先到先得”策略，所以应该在不那么具体的路由前面放置更具体的路由。首先列出静态路径的路由，然后是一个与默认路由匹配的空路径路由。[通配符路由](https://angular.cn/guide/router#setting-up-wildcard-routes)是最后一个，因为它匹配每一个 URL，只有当其它路由都没有匹配时，`Router` 才会选择它。

1. 路由配置

   - ```typescript
     //app-routing.module.ts
     import { FirstComponent } from './first/first.component';
     import { SecondComponent } from './second/second.component';
     
     const routes: Routes = [
       { 
           path: 'first-component', 
           component: FirstComponent,
           children: [
               {path: 'child-a',component: ChildAComponent},// 子路由组件1
               {path: 'child-b',component: ChildBComponent} // 子路由组件2 
           ]
       },
       { path: 'second-component', component: SecondComponent },
       { path: '',   redirectTo: '/first-component', pathMatch: 'full' }, //重定向redirectTo
       { path: '**', component: `404Component.ts` }  //一般用于匹配404页面
     ];
     ```

2. 在Html中使用

   - ```html
     <a routerLink="/first-component" routerLinkActive="active">First Component</a>
     <a routerLink="/second-component" routerLinkActive="active">Second Component</a>
     
     //点击路由,路由对应的component会显示在 router-outlet （路由器出口）标签中
     <router-outlet></router-outlet>
     ```



### 三、js中获取路由信息

```typescript
import {  ActivatedRoute } from '@angular/router';  

constructor( private route: ActivatedRoute ) {}  //依赖注入
 
ngOnInit() {
  this.route.queryParams.subscribe(params => {
      console.log(params['name'])   //路由传递过来的参数
  });
}
```



### 四、子路由

- 配置子路由

```typescript
//app-routing.module.ts
import { FirstComponent } from './first/first.component';

const routes: Routes = [
  { 
      path: 'first-component', 
      component: FirstComponent,
      children: [
          {path: 'child-a',component: ChildAComponent},// 子路由组件1
          {path: 'child-b',component: ChildBComponent} // 子路由组件2 
      ]
  },
];
```

- 使用相对路径 `../` 跳转同级路由

```html
<!-- 这条标签是在 first-component组件中 , 跳转同级的 second-component组件 -->
<a routerLink="../second-component">Relative Route to second component</a>
```

### 五、指定相对路由

```typescript
import { ActivatedRoute } from '@angular/router';  

constructor( private route: ActivatedRoute ) {}  //依赖注入

//goToItems() 方法会把目标 URI 解释为相对于当前路由的，并导航到 items 路由。
goToItems() {
 this.router.navigate(['items'], { relativeTo: this.route });
}
```

### 六、访问查询参数和片段


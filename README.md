# 資料表查詢
```
三張表：
===> a_stuff_content: 物品內容
===> a_box: 置物櫃
===> a_stuff_path: 物品置物櫃位子
```

### 利用置物櫃的id查詢物品內容
```sql
select a_stuff_content.id, a_stuff_content.title, a_stuff_content.content
from a_stuff_content, a_box, a_stuff_path 
where a_box.id = 'b001' 
and a_stuff_path.box_id = a_box.id
and a_stuff_path.stuff_id = a_stuff_content.id;
```

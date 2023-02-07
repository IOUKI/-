create database aaa;

use aaa;
-- 物品
create table a_stuff_content (
	id varchar(20) not null,
    title varchar(20) not null,
    content varchar(20),
    primary key (id)
);

-- 儲存格
create table a_box (
	id varchar(20) not null,
    title varchar(20) not null,
    primary key (id)
);

-- 物品儲存位置
create table a_stuff_path (
	stuff_id varchar(20) not null,
    box_id varchar(20) not null,
    primary key (stuff_id, box_id)
);

insert into a_stuff_content(id, title, content)
values('s001', '尿尿', '就是尿尿'),
('s002', '大便', '就是大便'),
('s003', '唧唧', '就是唧唧');

insert into a_box(id, title) 
values('b001', '一號櫃'),
('b002', '二號櫃');

insert into a_stuff_path(stuff_id, box_id)
values('s001', 'b002'),
('s002', 'b001'),
('s003', 'b001');

-- 從box id 查詢內容
select a_stuff_content.id, a_stuff_content.title, a_stuff_content.content
from a_stuff_content, a_box, a_stuff_path 
where a_box.id = 'b001' 
and a_stuff_path.box_id = a_box.id
and a_stuff_path.stuff_id = a_stuff_content.id;
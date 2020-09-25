create table board_table (
	board_no			number 				primary key	
	,member_id			varchar2(20) 		not null
	,board_title		varchar2(200) 		not null
	,board_context		varchar2(2000)		not null
	,board_indate		date				default sysdate
	,board_hits			number 				default 0	
	,originalfile		varchar2(200)	
	,savedfile			varchar2(100)
	,constraint board_fk foreign key(member_id)
		references member_table(member_id) on delete cascade
);

create sequence board_seq;

select
	b.board_no
	,b.member_id
	,b.board_title
	,b.board_context
	,to_char(b.board_indate, 'YYYY-MM-DD') as board_indate
	,b.board_hits
	,m.member_nm
from
	board_table b, member_table m
order by
	board_no desc;
	
select
	b.board_no
	,b.member_id
	,b.board_title
	,b.board_context
	,to_char(b.board_indate, 'YYYY-MM-DD') as board_indate
	,b.board_hits
	,m.member_nm
from
	board_table b, member_table m
where
	b.member_id = m.member_id
and
	b.board_title like '%'||#{searchText}||'%'
and
	m.member_nm like '%'||#{searchText}||'%'
order by
	board_no desc;
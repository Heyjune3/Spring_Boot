-- 검색가능한 답변형 게시판
/*
 * TINYTEXT - 최대 255 byte
 * TEXT - 최대 65535 바이트 (대락 64KB) - 3BYTE - 21844 글자 저장 가능.
 * MEDIUMTEXT - 16777215 byte(16MB) 
 * LONGTEXT - 4294967295 byte (대략 4GB) 
 */
CREATE TABLE re_tbl_board(
	bno INT PRIMARY KEY auto_increment,			-- 게시글 번호
	-- varchar는 300으로 지정해놓아도 3글자만 입력시 그 3글자에 대한 공간만 차지함
	title VARCHAR(300) NOT NULL,				-- 게시글 제목
	content TEXT NOT NULL,						-- 게시글 내용
	writer VARCHAR(50) NOT NULL,				-- 작성자 이름 - 표시용
	origin INT NULL DEFAULT 0,					-- 원본글 그룹 번호
	depth INT NULL DEFAULT 0,					-- view 출력용
	seq INT NULL DEFAULT 0,						-- 그룹 정렬 번호
	regdate TIMESTAMP NULL DEFAULT now(),		-- 게시글 작성 시간
	updatedate TIMESTAMP NULL DEFAULT now(),	-- 게시글 수정 시간
	viewcnt INT NULL DEFAULT 0,					-- 조회수
	showboard VARCHAR(10) NULL DEFAULT 'y',		-- 삭제 요청 여부
	uno INT NOT NULL,							-- 게시글 작성자 회원 번호
	CONSTRAINT fk_re_tbl_uno
	FOREIGN KEY(uno) REFERENCES tbl_user(uno),
	INDEX(origin)
);

SELECT * FROM re_tbl_board;
CREATE TABLE test (
	id serial primary key,
	test_name varchar(100) NOT NULL
)

CREATE TABLE question (
	id serial primary key,
	question_text varchar(150) not null,
	test_id int not null,
	foreign key (test_id) references test (id)
)

CREATE TABLE answer (
	id serial primary key,
	test_id int not null,
	question_id int not null,
	answer_text varchar(150) not null,
	is_correct_answer bool,
	foreign key (test_id) references test (id),
	foreign key (question_id) references question (id)
)
create table admin(
      ad_id int primary key,
      ad_email varchar(20),
      ad_name varchar(20) not null,
      ad_password varchar(20) not null
);
create table category (
      category_id int primary key,
      category_name varchar(30) unique not null,
      category_description varchar(100)
);

create table products(
      product_id int primary key,
      product_name varchar(20) not null,
      product_price numeric not null,
      product_brand varchar(20) not null,
      product_description varchar(100) not null,
        category_id numeric references category(category_id)
);

create table event(
      event_id int primary key,
      event_name varchar(20) unique  not null,
      event_startdate date not null,
      event_enddate date not null
);

create table coupon(
      coupon_id numeric primary key,
      coupon_discount numeric not null,
      category_id numeric references category(category_id)
);

create table customer(
      customer_email varchar(20) primary key,
      customer_name varchar(20) not null,
      customer_nadd varchar(100) not null,
      customer_ph numeric not null unique,
      customer_password varchar(20) not null
);


create table cart(
      cart_id numeric not null unique,
      quantity numeric not null,
      customer_id numeric references customer(customer_id),
      product_id numeric references product(product_id)
);

create table order_table(
      order_id numeric not null unique,
      quantity numeric not null,
      product_id numeric references product(product_id),
      customer_id numeric references customer(customer_id)
);

create table payment(
      pay_id numeric primary key,
      amount numeric not null,
      discount numeric not null,
      order_id numeric references order_table(order_id)
);











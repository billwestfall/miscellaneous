fn main() {
  println!("Hello world!");
  another_function();
  another_function2(5);
}

fn another_function() {
  println!("ANother function");
}

fn another_function2(x:i32){
  println!("The value of x = {}",x);
}

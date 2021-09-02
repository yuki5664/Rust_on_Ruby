use tokio::runtime::Runtime;
use libc::c_char;
use std::ffi::CStr;

#[no_mangle]
pub extern  fn get(url:*const c_char) {
    println!("start GET");
    let c_str: &CStr =unsafe{CStr::from_ptr(url)};
    let str_slice: &str = c_str.to_str().unwrap();
    let str_url: String = str_slice.to_owned();
    println!("start {}",str_url);
    let v= Runtime::new().unwrap().block_on(work(str_url));
    println!("{}", v);
}    


async fn work(url:String)-> i32 {
    println!("{}",url);
        let client = reqwest::Client::new();
        let body = client.get(url).send().await;
        println!("{:?}",body);
        42
}

#[no_mangle]
pub extern fn scraper(n: u32) -> u32 {n}



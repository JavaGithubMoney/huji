package bao; 
import java.io.UnsupportedEncodingException;
public class Change {
	/**
	 * 构造方法
	 */
	public Change(){
	} 
	/**
	 * 对字符进行转码处理
	 * @param str 要转码的字符串
	 * @return 编码后的字符串
	 */
	public String toString(String str){
		// 转换字符
		String text = "";
		// 判断要转码的字符串是否有效
		if(str != null && !"".equals(str)){
			try {
				// 将字符串进行编码处理
				text = new String(str.getBytes("ISO-8859-1"),"GB18030");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		// 返回后的字符串
		return text;
	}
}


package bao; 
import java.io.UnsupportedEncodingException;
public class Change {
	/**
	 * ���췽��
	 */
	public Change(){
	} 
	/**
	 * ���ַ�����ת�봦��
	 * @param str Ҫת����ַ���
	 * @return �������ַ���
	 */
	public String toString(String str){
		// ת���ַ�
		String text = "";
		// �ж�Ҫת����ַ����Ƿ���Ч
		if(str != null && !"".equals(str)){
			try {
				// ���ַ������б��봦��
				text = new String(str.getBytes("ISO-8859-1"),"GB18030");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		// ���غ���ַ���
		return text;
	}
}


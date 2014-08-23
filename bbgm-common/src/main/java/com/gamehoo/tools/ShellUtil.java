package com.gamehoo.tools;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.io.InputStreamReader;

public class ShellUtil {

	/**
	 * 执行外部shell命令
	 * 
	 * @param command
	 *            外部shell命令
	 * @param result
	 *            返回的结果集
	 * @return
	 */
	public static boolean exec(String[] command, List result) {
		try {
			// 创建一个外部进程
			Process process = Runtime.getRuntime().exec(command);

			// 清空ErrorStream
//			process.getErrorStream().close();//不能直接关闭ErrorStream
			InputStream errStream = process.getErrorStream();
			if (errStream != null) {
				BufferedReader errBr = new BufferedReader(
						new InputStreamReader(errStream));
				try {
					while (errBr != null && errBr.readLine() != null) {
					}

				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			// 输入流
			BufferedInputStream bis = new BufferedInputStream(process
					.getInputStream());

			BufferedReader inReader = new BufferedReader(new InputStreamReader(
					bis));

			String str = null;

			while ((str = inReader.readLine()) != null) {
				if (str.length() == 0) {
					break;
				}

				result.add(str);
			}
			process.destroy();

		} catch (IOException e) {
			e.printStackTrace();
			return false;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

		return true;
	}
}

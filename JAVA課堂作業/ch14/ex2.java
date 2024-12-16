package ch14;

class salaryException extends Exception
{
	public String toString()
		{
			return "發生薪資設定錯誤的例外!";
		}	
}
class Employees
{
	private int salary;
	private String name;
	Employees(String a)
	{
		name=a;
		System.out.println("員工:"+name);
	}
	void setSalary(int b) throws salaryException
	{
		if(b<0 || b>100000)
		{
			throw new salaryException();
		}
		else 
		{
			salary=b;
		}
		
	}
	int getSalary()
	{
		return salary;
	}
	void showData()
	{
		System.out.print(name+"的薪水:"+salary);
	}
	
}

public class ex2 {

	public static void main(String[] args) throws salaryException {
		// TODO Auto-generated method stub
		try 
		{
			Employees e1 = new Employees("Peter");
			e1.setSalary(50000);
			e1.showData();
			System.out.println();
			Employees e2 = new Employees("Mary");
			e2.setSalary(110000);
			e2.showData();
		}
		catch(salaryException e)
		{
			System.out.print(e.toString());
		}
		
		
		

	}

}
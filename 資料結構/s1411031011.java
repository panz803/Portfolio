import java.io.*;
class s1411031011
{
	
	public static void main(String[] args) throws Exception
	{
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		int doit=1;
		int cardlist=0;
		int total=1000;/*籌碼*/
		int my_num=0;/*下注金額*/
		int gg;/*中龍柱猜大猜小*/
		int[] cardnum=new int[52];
		String[] cardkind={"黑桃","紅心","方塊","梅花"};
		for( int i=0;i<52;i++)
		{
			cardnum[i]=i;
		}
		int temp=0;
		int rnum=0;
		int kindnum=0;
		int num1=0,num2=0,num3=0;
		for(int i=0;i<52;i++)
		{
			rnum=(int)(Math.random()*52);
			temp=cardnum[i];
			cardnum[i]=cardnum[rnum];
			cardnum[rnum]=temp;
		}
		
		while(doit!=99)
		{
			System.out.print("--------輸入1.發牌，2.結束，99離開：--------");
			doit=Integer.parseInt(in.readLine());
			if(doit==1)
			{
				kindnum=(int)(cardnum[cardlist]/13);
				System.out.print("  "+cardkind[kindnum]+"-"+((cardnum[cardlist]%13)+1));
				kindnum=(int)(cardnum[cardlist+1]/13);
				System.out.print("  "+cardkind[kindnum]+"-"+((cardnum[cardlist+1]%13)+1));
				num1=(cardnum[cardlist]%13)+1;
				num2=(cardnum[cardlist+1]%13)+1;
				System.out.print("\n下注金額:");
				my_num=Integer.parseInt(in.readLine());
				while(total<my_num)
			    {
			        System.out.print("餘額不足!請重新下注:");
			        my_num=Integer.parseInt(in.readLine());
			        
			    }
				if(my_num>0)
				{
				    kindnum=(int)(cardnum[cardlist+2]/13);
			    	num3=(cardnum[cardlist+2]%13)+1;
			    	if(num1>num2)
			    	{
				    	temp=num1;
				    	num1=num2;
				    	num2=temp;
			    	}
			    	if(num1==num2)
			    	{
				        System.out.print("中龍柱\n");
				        System.out.print("請猜下一張牌的大小(大於龍柱請按1 or 小於龍柱請按2):");
				        gg=Integer.parseInt(in.readLine());
				        if(gg==1 && num1<num3)
				        {
				            System.out.print("  "+cardkind[kindnum]+"-"+((cardnum[cardlist+2]%13)+1));
				            System.out.print("猜中了!\n");
				            System.out.println("剩餘點數："+total);
				        }
				        else if(gg==2 && num1>num3)
				        {
				            System.out.print("  "+cardkind[kindnum]+"-"+((cardnum[cardlist+2]%13)+1));
				            System.out.print("猜中了!\n");
				            System.out.println("剩餘點數："+total);
				        }
				        else
				        {
				            System.out.print("  "+cardkind[kindnum]+"-"+((cardnum[cardlist+2]%13)+1));
				            System.out.print("猜錯了!\n");
				            total=total-my_num;
				            System.out.println("剩餘點數："+total);
				        }
			    	}
			    	else if((num1<num3)&&(num3<num2))
			    	{
			    	    System.out.print("  "+cardkind[kindnum]+"-"+((cardnum[cardlist+2]%13)+1));
				    	System.out.println("\n射龍門成功");
				    	total=total+my_num;
				    	System.out.println("剩餘點數："+total);
			    	}
			    	else if((num1==num3)||(num3==num2))

				    {
				        System.out.print("  "+cardkind[kindnum]+"-"+((cardnum[cardlist+2]%13)+1));
			    		System.out.println("\n撞龍柱");
			    		total=total-my_num*2;
			    		System.out.println("剩餘點數："+total);
			    	}
			    	else if(num1==num2 && num1==num3)
			        {
			            System.out.print("  "+cardkind[kindnum]+"-"+((cardnum[cardlist+2]%13)+1));
			    	    System.out.println("撞柱");
			    	    total=total-my_num*3;
			    	    System.out.println("剩餘點數："+total);
			        }
			        else
			    	{
			    	    System.out.print("  "+cardkind[kindnum]+"-"+((cardnum[cardlist+2]%13)+1));
			    		System.out.println("\n射龍門失敗");
			    		total=total-my_num;
			    		System.out.println("剩餘點數："+total);
			    	}
			    	
			    }
			    if(total<=0)
			    {
			        System.out.print("破產");
			        System.out.println("剩餘點數："+total);
			        System.exit(doit);
			    }
			}
			else if(doit==2)
	    	{
			    System.out.println("最後您的點數："+total);
	    	}
	    	cardlist=cardlist+3;
		    System.out.println("");
		}
		
	}

}
public class WithdrawAndAddMoney {
	public string name;
    public decimal bal=2000;
    public decimal amt=200;
    public decimal withdraw;
    public decimal deposit;
    public void Amount(){
		withdraw=bal-amt;
        system.debug('withdraw amt is'+withdraw);
    }
}
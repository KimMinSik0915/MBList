package com.mbti.list.vo;

public class ListVO {

	private int EI, SN, TF, JP;

	public int getEI() {
		return EI;
	}

	public void setEI(int eI) {
		EI = eI;
	}

	public int getSN() {
		return SN;
	}

	public void setSN(int sN) {
		SN = sN;
	}

	public int getTF() {
		return TF;
	}

	public void setTF(int tF) {
		TF = tF;
	}

	public int getJP() {
		return JP;
	}

	public void setJP(int jP) {
		JP = jP;
	}

	@Override
	public String toString() {
		return "ListVO [EI=" + EI + ", SN=" + SN + ", TF=" + TF + ", JP=" + JP + "]";
	}

	
	
}

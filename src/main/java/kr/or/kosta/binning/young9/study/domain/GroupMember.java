package kr.or.kosta.binning.young9.study.domain;

public class GroupMember {
	private int studyGroupid;
	private String nickname;
	private String email;
	private String groupName;
	
	public GroupMember(){}
	public GroupMember(int studyGroupid, String nickname, String email, String groupName) {
		super();
		this.studyGroupid = studyGroupid;
		this.nickname = nickname;
		this.email = email;
		this.groupName = groupName;
	}
	public int getStudyGroupid() {
		return studyGroupid;
	}
	public void setStudyGroupid(int studyGroupid) {
		this.studyGroupid = studyGroupid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	
	@Override
	public String toString() {
		return "GroupMember [studyGroupid=" + studyGroupid + ", nickname=" + nickname + ", email=" + email
				+ ", groupName=" + groupName + "]";
	}
	
}

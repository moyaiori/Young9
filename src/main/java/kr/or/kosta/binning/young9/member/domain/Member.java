package kr.or.kosta.binning.young9.member.domain;
/**
 * 1.
 *  수정일 : 2015 - 11 -20 : 오후 3시
 *  수정자 : 조현빈
 *  수정내용 :도메인객체 추가 및 로그인에 사용되는 생성자 추가. 
 * **/


/** 사용자 정보 저장을 위한 도메인 객체 */
public class Member {
   private String email;
   private String email1;
    private String nickname;
    private String name;
    private String passwd;
    private String phoneNumber;
    private String phoneNumber2;
    private String phoneNumber3;
    private String introdution;
    private String birth;
    private int targetScore;
    private String testName;    //유형
    private int studyGroupId;
    
   public Member() {}
   /*로그인에 사용되는 생성자*/
   public Member(String email,String nickname){
      this.email = email;
      this.nickname =nickname;
   }
   
   public Member(String email, String nickname, String name, String passwd, String phoneNumber, String phoneNumber2,
         String phoneNumber3, String introdution, String birth, int targetScore, String testName, int studyGroupId) {
      this.email = email;
      this.nickname = nickname;
      this.name = name;
      this.passwd = passwd;
      this.phoneNumber = phoneNumber;
      this.phoneNumber2 = phoneNumber2;
      this.phoneNumber3 = phoneNumber3;
      this.introdution = introdution;
      this.birth = birth;
      this.targetScore = targetScore;
      this.testName = testName;
      this.studyGroupId = studyGroupId;
   }

   /*회원가입시 이용*/
  public Member(String email, String nickname, String name, String passwd, String phoneNumber, String phoneNumber2,
        String phoneNumber3, String introdution, String birth, int targetScore, String testName) {
     this.email = email;
     this.nickname = nickname;
     this.name = name;
     this.passwd = passwd;
     this.phoneNumber = phoneNumber;
     this.phoneNumber2 = phoneNumber2;
     this.phoneNumber3 = phoneNumber3;
     this.introdution = introdution;
     this.birth = birth;
     this.targetScore = targetScore;
     this.testName = testName;
  }



   public String getEmail1() {
      return email1;
   }

   public void setEmail1(String email1) {
      this.email1 = email1;
   }

   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }

   public String getNickname() {
      return nickname;
   }

   public void setNickname(String nickname) {
      this.nickname = nickname;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getPasswd() {
      return passwd;
   }

   public void setPasswd(String passwd) {
      this.passwd = passwd;
   }

   public String getPhoneNumber() {
      return phoneNumber;
   }

   public void setPhoneNumber(String phoneNumber) {
      this.phoneNumber = phoneNumber;
   }

   public String getPhoneNumber2() {
      return phoneNumber2;
   }

   public void setPhoneNumber2(String phoneNumber2) {
      this.phoneNumber2 = phoneNumber2;
   }

   public String getPhoneNumber3() {
      return phoneNumber3;
   }

   public void setPhoneNumber3(String phoneNumber3) {
      this.phoneNumber3 = phoneNumber3;
   }

   public String getIntrodution() {
      return introdution;
   }

   public void setIntrodution(String introdution) {
      this.introdution = introdution;
   }

   public String getBirth() {
      return birth;
   }

   public void setBirth(String birth) {
      this.birth = birth;
   }

   public int getTargetScore() {
      return targetScore;
   }

   public void setTargetScore(int targetScore) {
      this.targetScore = targetScore;
   }

   public String getTestName() {
      return testName;
   }

   public void setTestName(String testName) {
      this.testName = testName;
   }

   public int getStudyGroupId() {
      return studyGroupId;
   }

   public void setStudyGroupId(int studyGroupId) {
      this.studyGroupId = studyGroupId;
   }
   
	@Override
	public String toString() {
		return "Member [email=" + email + ", email1=" + email1 + ", nickname=" + nickname + ", name=" + name + ", passwd="
				+ passwd + ", phoneNumber=" + phoneNumber + ", phoneNumber2=" + phoneNumber2 + ", phoneNumber3="
				+ phoneNumber3 + ", introdution=" + introdution + ", birth=" + birth + ", targetScore=" + targetScore
				+ ", testName=" + testName + ", studyGroupId=" + studyGroupId + "]";
	}
   
}
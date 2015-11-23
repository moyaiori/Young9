package kr.or.kosta.binning.young9.study.domain;

public class StudyGroup {
	private int studyGroupId;
	private int recruitCount;
	private int targetScore;
	private int dailyWordCount;
	private int dailyCount;
	private String targetTestName;
	private String groupName;
	private String recruitStartDate;
	private String recruitEndDate;
	private String studyStartDate;
	private String studyEndDate;
	private String groupIntrodution;
	private String groupOwner;
	private String recruitState;
	
	public StudyGroup(){}
	public StudyGroup(int studyGroupId, int recruitCount, int targetScore, int dailyWordCount, int dailyCount,
			String targetTestName, String groupName, String recruitStartDate, String recruitEndDate,
			String studyStartDate, String studyEndDate, String groupIntrodution, String groupOwner,
			String recruitState) {
		super();
		this.studyGroupId = studyGroupId;
		this.recruitCount = recruitCount;
		this.targetScore = targetScore;
		this.dailyWordCount = dailyWordCount;
		this.dailyCount = dailyCount;
		this.targetTestName = targetTestName;
		this.groupName = groupName;
		this.recruitStartDate = recruitStartDate;
		this.recruitEndDate = recruitEndDate;
		this.studyStartDate = studyStartDate;
		this.studyEndDate = studyEndDate;
		this.groupIntrodution = groupIntrodution;
		this.groupOwner = groupOwner;
		this.recruitState = recruitState;
	}
	public int getStudyGroupId() {
		return studyGroupId;
	}
	public void setStudyGroupId(int studyGroupId) {
		this.studyGroupId = studyGroupId;
	}
	public int getRecruitCount() {
		return recruitCount;
	}
	public void setRecruitCount(int recruitCount) {
		this.recruitCount = recruitCount;
	}
	public int getTargetScore() {
		return targetScore;
	}
	public void setTargetScore(int targetScore) {
		this.targetScore = targetScore;
	}
	public int getDailyWordCount() {
		return dailyWordCount;
	}
	public void setDailyWordCount(int dailyWordCount) {
		this.dailyWordCount = dailyWordCount;
	}
	public int getDailyCount() {
		return dailyCount;
	}
	public void setDailyCount(int dailyCount) {
		this.dailyCount = dailyCount;
	}
	public String getTargetTestName() {
		return targetTestName;
	}
	public void setTargetTestName(String targetTestName) {
		this.targetTestName = targetTestName;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getRecruitStartDate() {
		return recruitStartDate;
	}
	public void setRecruitStartDate(String recruitStartDate) {
		this.recruitStartDate = recruitStartDate;
	}
	public String getRecruitEndDate() {
		return recruitEndDate;
	}
	public void setRecruitEndDate(String recruitEndDate) {
		this.recruitEndDate = recruitEndDate;
	}
	public String getStudyStartDate() {
		return studyStartDate;
	}
	public void setStudyStartDate(String studyStartDate) {
		this.studyStartDate = studyStartDate;
	}
	public String getStudyEndDate() {
		return studyEndDate;
	}
	public void setStudyEndDate(String studyEndDate) {
		this.studyEndDate = studyEndDate;
	}
	public String getGroupIntrodution() {
		return groupIntrodution;
	}
	public void setGroupIntrodution(String groupIntrodution) {
		this.groupIntrodution = groupIntrodution;
	}
	public String getGroupOwner() {
		return groupOwner;
	}
	public void setGroupOwner(String groupOwner) {
		this.groupOwner = groupOwner;
	}
	public String getRecruitState() {
		return recruitState;
	}
	public void setRecruitState(String recruitState) {
		this.recruitState = recruitState;
	}
	@Override
	public String toString() {
		return "StudyGroup [studyGroupId=" + studyGroupId + ", recruitCount=" + recruitCount + ", targetScore="
				+ targetScore + ", dailyWordCount=" + dailyWordCount + ", dailyCount=" + dailyCount
				+ ", targetTestName=" + targetTestName + ", groupName=" + groupName + ", recruitStartDate="
				+ recruitStartDate + ", recruitEndDate=" + recruitEndDate + ", studyStartDate=" + studyStartDate
				+ ", studyEndDate=" + studyEndDate + ", groupIntrodution=" + groupIntrodution + ", groupOwner="
				+ groupOwner + ", recruitState=" + recruitState + "]";
	}
	
	
}

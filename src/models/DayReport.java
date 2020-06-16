package models;

import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;




    @NamedQueries({
        @NamedQuery(
                name = "connect_trackers_reports",
                query = "SELECT * FROM trackers JOIN reports ON trackers.employee_id = reports.employee_id AND trackers.tracker_date = reports.report_date;"
                ),
        @NamedQuery(
                name ="getDayReports",
                query = ""
                )
    })

        public class DayReport {
      /*  private Integer id;
        private Employee employee;
        private Date tracker_date;

        private Date report_date;
        private String title;
        private String content;
        private Timestamp created_at;
        private Timestamp updated_at;
        private Integer satisfy;
        private Integer accomplishment;*/

        private Employee employee;
        private Report report;
        private Energy tracker;


        /*public Integer getId() {
            return id;
        }

        public void setId(Integer id) {
            this.id = id;
        }*/

        public Employee getEmployee(){
            return employee;
        }

        public void setEmployee(Employee employee){
            this.employee = employee;
        }

        public Report getReport(){
            return report;
        }

        public void setReport(Report report){
            this.report = report;
        }

        public Energy getTracker(){
            return tracker;
        }

        public void setTracker(Energy tracker){
            this.tracker = tracker;
        }

       /* public Date getTracker_date(){
            return tracker_date;
        }

        public void setTracker_date(Date tracker_date){
            this.tracker_date = tracker_date;
        }

        public Date getReport_date() {
            return report_date;
        }

        public void setReport_date(Date report_date) {
            this.report_date = report_date;
        }

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public String getContent() {
            return content;
        }

        public void setContent(String content) {
            this.content = content;
        }

        public Timestamp getCreated_at() {
            return created_at;
        }

        public void setCreated_at(Timestamp created_at) {
            this.created_at = created_at;
        }

        public Timestamp getUpdated_at() {
            return updated_at;
        }

        public void setUpdated_at(Timestamp updated_at) {
            this.updated_at = updated_at;
        }

       public Integer getSatisfy(){
            return satisfy;
        }

        public void setSatisfy(Integer satisfy){
            this.satisfy = satisfy;
        }

        public Integer getAccomplishment(){
            return accomplishment;
        }

        public void setAccomplishment(Integer accomplishment){
           this.accomplishment = accomplishment;
        }*/

}

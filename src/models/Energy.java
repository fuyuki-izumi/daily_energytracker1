package models;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Table(name = "trackers")
@NamedQueries({
    @NamedQuery(
            name = "getAllTrackers",
            query = "SELECT t FROM Energy AS t ORDER BY t.id DESC"
            ),
    @NamedQuery(
            name = "getTrackersCount",
            query = "SELECT COUNT(t) FROM Energy AS t"

            )
})

@Entity
public class Energy {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "employee_id", nullable = false)
    private Employee employee;

    @ManyToOne
    @JoinColumn(name = "report_id", nullable = false)
    private Report report;

    @Column(name = "tracker_date", nullable = false)
    private Date tracker_date;

    @Column(name = "am01", nullable = true)
    private Integer am01;

    @Column(name = "am02", nullable = true)
    private Integer am02;

    @Column(name = "am03", nullable = true)
    private Integer am03;

    @Column(name = "am04", nullable = true)
    private Integer am04;

    @Column(name = "am05", nullable = true)
    private Integer am05;

    @Column(name = "am06", nullable = true)
    private Integer am06;

    @Column(name = "am07", nullable = true)
    private Integer am07;

    @Column(name = "am08", nullable = true)
    private Integer am08;

    @Column(name = "am09", nullable = true)
    private Integer am09;

    @Column(name = "am10", nullable = true)
    private Integer am10;

    @Column(name = "am11", nullable = true)
    private Integer am11;

    @Column(name = "am12", nullable = true)
    private Integer am12;

    @Column(name = "pm01", nullable = true)
    private Integer pm01;

    @Column(name = "pm02", nullable = true)
    private Integer pm02;

    @Column(name = "pm03", nullable = true)
    private Integer pm03;

    @Column(name = "pm04", nullable = true)
    private Integer pm04;

    @Column(name = "pm05", nullable = true)
    private Integer pm05;

    @Column(name = "pm06", nullable = true)
    private Integer pm06;

    @Column(name = "pm07", nullable = true)
    private Integer pm07;

    @Column(name = "pm08", nullable = true)
    private Integer pm08;

    @Column(name = "pm09", nullable = true)
    private Integer pm09;

    @Column(name = "pm10", nullable = true)
    private Integer pm10;

    @Column(name = "pm11", nullable = true)
    private Integer pm11;

    @Column(name = "pm12", nullable = true)
    private Integer pm12;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

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

    public Date getTracker_date(){
        return tracker_date;
    }

    public void setTracker_date(Date tracker_date){
        this.tracker_date = tracker_date;
    }

    public Integer getAm01() {
        return am01;
    }

    public void setAm01(Integer am01) {
        this.am01 = am01;
    }

    public Integer getAm02() {
        return am02;
    }

    public void setAm02(Integer am02) {
        this.am02 = am02;
    }

    public Integer getAm03() {
        return am03;
    }

    public void setAm03(Integer am03) {
        this.am03 = am03;
    }

    public Integer getAm04() {
        return am04;
    }

    public void setAm04(Integer am04) {
        this.am04 = am04;
    }

    public Integer getAm05() {
        return am05;
    }

    public void setAt05(Integer am05) {
        this.am05 = am05;
    }

    public Integer getAm06() {
        return am06;
    }

    public void setAm06(Integer am06) {
        this.am06 = am06;
    }

    public Integer getAm07() {
        return am07;
    }

    public void setAM07(Integer am07) {
        this.am07 = am07;
    }

    public Integer getAm08() {
        return am08;
    }

    public void setAm08(Integer am08) {
        this.am08 = am08;
    }

    public Integer getAm09() {
        return am08;
    }

    public void setAm09(Integer am09) {
        this.am09 = am09;
    }

    public Integer getAm10() {
        return am10;
    }

    public void setAm10(Integer am10) {
        this.am10 = am10;
    }

    public Integer getAm11() {
        return am11;
    }

    public void setAm11(Integer am11) {
        this.am11 = am11;
    }

    public Integer getAm12() {
        return am12;
    }

    public void setAm12(Integer am12) {
        this.am12 = am12;
    }

    public Integer getPm01() {
        return pm01;
    }

    public void setPm01(Integer pm01) {
        this.pm01 = pm01;
    }

    public Integer getPm02() {
        return pm02;
    }

    public void setPm02(Integer pm02) {
        this.pm02 = pm02;
    }

    public Integer getPm03() {
        return pm03;
    }

    public void setPm03(Integer pm03) {
        this.pm03 = pm03;
    }

    public Integer getPm04() {
        return pm04;
    }

    public void setPm04(Integer pm04) {
        this.pm04 = pm04;
    }

    public Integer getPm05() {
        return pm05;
    }

    public void setPm05(Integer pm05) {
        this.pm05 = pm05;
    }

    public Integer getPm06() {
        return pm06;
    }

    public void setPm06(Integer pm06) {
        this.pm06 = pm06;
    }

    public Integer getPm07() {
        return pm07;
    }

    public void setPm07(Integer pm07) {
        this.pm07 = pm07;
    }

    public Integer getPm08() {
        return pm08;
    }

    public void setPm08(Integer pm08) {
        this.pm08 = pm08;
    }

    public Integer getPm09() {
        return pm09;
    }

    public void setPm09(Integer pm09) {
        this.pm09 = pm09;
    }

    public Integer getPm10() {
        return pm10;
    }

    public void setPm10(Integer pm10) {
        this.pm10 = pm10;
    }

    public Integer getPm11() {
        return pm11;
    }

    public void setPm11(Integer pm11) {
        this.pm11 = pm11;
    }

    public void setPm12(Integer pm12) {
        this.pm12 = pm12;
    }


}

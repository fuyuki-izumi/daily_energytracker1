package models.validators;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import models.Employee;
import models.Report;
import models.Yoine;
import utils.DBUtil;

//重複チェック
public class YoineValidator {
   public static List<String> validate(Yoine y){
            List<String> errors = new ArrayList<String>();

            String yoine_error = _validateYoine(y.getEmployee(), y.getReport());
            if(!yoine_error.equals("")){
                errors.add(yoine_error);
            }
            return errors;
   }
   //いいねに対するバリデーションメソッド
   private static String _validateYoine(Employee employee, Report report){
           EntityManager em = DBUtil.createEntityManager();
           long yoine_count = (long)em.createNamedQuery("checkRegisteredYoine", Long.class)
                                       .setParameter("employee_id", employee)
                                       .setParameter("report_id", report)
                                       .getSingleResult();

           em.close();

           //いいねが既にされている場合
           if(yoine_count > 0){
               return "既にいいねされています";
           }

           return "";
       }
}
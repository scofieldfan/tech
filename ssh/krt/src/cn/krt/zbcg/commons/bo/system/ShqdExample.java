package cn.krt.zbcg.commons.bo.system;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ShqdExample {
    /**
     * This field was generated by Abator for iBATIS.
     * This field corresponds to the database table shqd
     *
     * @abatorgenerated Sat Sep 14 14:37:58 CST 2013
     */
    protected String orderByClause;

    /**
     * This field was generated by Abator for iBATIS.
     * This field corresponds to the database table shqd
     *
     * @abatorgenerated Sat Sep 14 14:37:58 CST 2013
     */
    protected List oredCriteria;

    /**
     * This method was generated by Abator for iBATIS.
     * This method corresponds to the database table shqd
     *
     * @abatorgenerated Sat Sep 14 14:37:58 CST 2013
     */
    public ShqdExample() {
        oredCriteria = new ArrayList();
    }

    /**
     * This method was generated by Abator for iBATIS.
     * This method corresponds to the database table shqd
     *
     * @abatorgenerated Sat Sep 14 14:37:58 CST 2013
     */
    protected ShqdExample(ShqdExample example) {
        this.orderByClause = example.orderByClause;
        this.oredCriteria = example.oredCriteria;
    }

    /**
     * This method was generated by Abator for iBATIS.
     * This method corresponds to the database table shqd
     *
     * @abatorgenerated Sat Sep 14 14:37:58 CST 2013
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by Abator for iBATIS.
     * This method corresponds to the database table shqd
     *
     * @abatorgenerated Sat Sep 14 14:37:58 CST 2013
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by Abator for iBATIS.
     * This method corresponds to the database table shqd
     *
     * @abatorgenerated Sat Sep 14 14:37:58 CST 2013
     */
    public List getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by Abator for iBATIS.
     * This method corresponds to the database table shqd
     *
     * @abatorgenerated Sat Sep 14 14:37:58 CST 2013
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by Abator for iBATIS.
     * This method corresponds to the database table shqd
     *
     * @abatorgenerated Sat Sep 14 14:37:58 CST 2013
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by Abator for iBATIS.
     * This method corresponds to the database table shqd
     *
     * @abatorgenerated Sat Sep 14 14:37:58 CST 2013
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by Abator for iBATIS.
     * This method corresponds to the database table shqd
     *
     * @abatorgenerated Sat Sep 14 14:37:58 CST 2013
     */
    public void clear() {
        oredCriteria.clear();
    }

    /**
     * This class was generated by Abator for iBATIS.
     * This class corresponds to the database table shqd
     *
     * @abatorgenerated Sat Sep 14 14:37:58 CST 2013
     */
    public static class Criteria {
        protected List criteriaWithoutValue;

        protected List criteriaWithSingleValue;

        protected List criteriaWithListValue;

        protected List criteriaWithBetweenValue;

        protected Criteria() {
            super();
            criteriaWithoutValue = new ArrayList();
            criteriaWithSingleValue = new ArrayList();
            criteriaWithListValue = new ArrayList();
            criteriaWithBetweenValue = new ArrayList();
        }

        public boolean isValid() {
            return criteriaWithoutValue.size() > 0
                || criteriaWithSingleValue.size() > 0
                || criteriaWithListValue.size() > 0
                || criteriaWithBetweenValue.size() > 0;
        }

        public List getCriteriaWithoutValue() {
            return criteriaWithoutValue;
        }

        public List getCriteriaWithSingleValue() {
            return criteriaWithSingleValue;
        }

        public List getCriteriaWithListValue() {
            return criteriaWithListValue;
        }

        public List getCriteriaWithBetweenValue() {
            return criteriaWithBetweenValue;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteriaWithoutValue.add(condition);
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            Map map = new HashMap();
            map.put("condition", condition);
            map.put("value", value);
            criteriaWithSingleValue.add(map);
        }

        protected void addCriterion(String condition, List values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            Map map = new HashMap();
            map.put("condition", condition);
            map.put("values", values);
            criteriaWithListValue.add(map);
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            List list = new ArrayList();
            list.add(value1);
            list.add(value2);
            Map map = new HashMap();
            map.put("condition", condition);
            map.put("values", list);
            criteriaWithBetweenValue.add(map);
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return this;
        }

        public Criteria andIdIn(List values) {
            addCriterion("id in", values, "id");
            return this;
        }

        public Criteria andIdNotIn(List values) {
            addCriterion("id not in", values, "id");
            return this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return this;
        }

        public Criteria andPinzhongidIsNull() {
            addCriterion("pinzhongid is null");
            return this;
        }

        public Criteria andPinzhongidIsNotNull() {
            addCriterion("pinzhongid is not null");
            return this;
        }

        public Criteria andPinzhongidEqualTo(Integer value) {
            addCriterion("pinzhongid =", value, "pinzhongid");
            return this;
        }

        public Criteria andPinzhongidNotEqualTo(Integer value) {
            addCriterion("pinzhongid <>", value, "pinzhongid");
            return this;
        }

        public Criteria andPinzhongidGreaterThan(Integer value) {
            addCriterion("pinzhongid >", value, "pinzhongid");
            return this;
        }

        public Criteria andPinzhongidGreaterThanOrEqualTo(Integer value) {
            addCriterion("pinzhongid >=", value, "pinzhongid");
            return this;
        }

        public Criteria andPinzhongidLessThan(Integer value) {
            addCriterion("pinzhongid <", value, "pinzhongid");
            return this;
        }

        public Criteria andPinzhongidLessThanOrEqualTo(Integer value) {
            addCriterion("pinzhongid <=", value, "pinzhongid");
            return this;
        }

        public Criteria andPinzhongidIn(List values) {
            addCriterion("pinzhongid in", values, "pinzhongid");
            return this;
        }

        public Criteria andPinzhongidNotIn(List values) {
            addCriterion("pinzhongid not in", values, "pinzhongid");
            return this;
        }

        public Criteria andPinzhongidBetween(Integer value1, Integer value2) {
            addCriterion("pinzhongid between", value1, value2, "pinzhongid");
            return this;
        }

        public Criteria andPinzhongidNotBetween(Integer value1, Integer value2) {
            addCriterion("pinzhongid not between", value1, value2, "pinzhongid");
            return this;
        }

        public Criteria andGuigeIsNull() {
            addCriterion("guige is null");
            return this;
        }

        public Criteria andGuigeIsNotNull() {
            addCriterion("guige is not null");
            return this;
        }

        public Criteria andGuigeEqualTo(String value) {
            addCriterion("guige =", value, "guige");
            return this;
        }

        public Criteria andGuigeNotEqualTo(String value) {
            addCriterion("guige <>", value, "guige");
            return this;
        }

        public Criteria andGuigeGreaterThan(String value) {
            addCriterion("guige >", value, "guige");
            return this;
        }

        public Criteria andGuigeGreaterThanOrEqualTo(String value) {
            addCriterion("guige >=", value, "guige");
            return this;
        }

        public Criteria andGuigeLessThan(String value) {
            addCriterion("guige <", value, "guige");
            return this;
        }

        public Criteria andGuigeLessThanOrEqualTo(String value) {
            addCriterion("guige <=", value, "guige");
            return this;
        }

        public Criteria andGuigeLike(String value) {
            addCriterion("guige like", value, "guige");
            return this;
        }

        public Criteria andGuigeNotLike(String value) {
            addCriterion("guige not like", value, "guige");
            return this;
        }

        public Criteria andGuigeIn(List values) {
            addCriterion("guige in", values, "guige");
            return this;
        }

        public Criteria andGuigeNotIn(List values) {
            addCriterion("guige not in", values, "guige");
            return this;
        }

        public Criteria andGuigeBetween(String value1, String value2) {
            addCriterion("guige between", value1, value2, "guige");
            return this;
        }

        public Criteria andGuigeNotBetween(String value1, String value2) {
            addCriterion("guige not between", value1, value2, "guige");
            return this;
        }

        public Criteria andJianshuIsNull() {
            addCriterion("jianshu is null");
            return this;
        }

        public Criteria andJianshuIsNotNull() {
            addCriterion("jianshu is not null");
            return this;
        }

        public Criteria andJianshuEqualTo(String value) {
            addCriterion("jianshu =", value, "jianshu");
            return this;
        }

        public Criteria andJianshuNotEqualTo(String value) {
            addCriterion("jianshu <>", value, "jianshu");
            return this;
        }

        public Criteria andJianshuGreaterThan(String value) {
            addCriterion("jianshu >", value, "jianshu");
            return this;
        }

        public Criteria andJianshuGreaterThanOrEqualTo(String value) {
            addCriterion("jianshu >=", value, "jianshu");
            return this;
        }

        public Criteria andJianshuLessThan(String value) {
            addCriterion("jianshu <", value, "jianshu");
            return this;
        }

        public Criteria andJianshuLessThanOrEqualTo(String value) {
            addCriterion("jianshu <=", value, "jianshu");
            return this;
        }

        public Criteria andJianshuLike(String value) {
            addCriterion("jianshu like", value, "jianshu");
            return this;
        }

        public Criteria andJianshuNotLike(String value) {
            addCriterion("jianshu not like", value, "jianshu");
            return this;
        }

        public Criteria andJianshuIn(List values) {
            addCriterion("jianshu in", values, "jianshu");
            return this;
        }

        public Criteria andJianshuNotIn(List values) {
            addCriterion("jianshu not in", values, "jianshu");
            return this;
        }

        public Criteria andJianshuBetween(String value1, String value2) {
            addCriterion("jianshu between", value1, value2, "jianshu");
            return this;
        }

        public Criteria andJianshuNotBetween(String value1, String value2) {
            addCriterion("jianshu not between", value1, value2, "jianshu");
            return this;
        }

        public Criteria andLaihuoshuliangIsNull() {
            addCriterion("laihuoshuliang is null");
            return this;
        }

        public Criteria andLaihuoshuliangIsNotNull() {
            addCriterion("laihuoshuliang is not null");
            return this;
        }

        public Criteria andLaihuoshuliangEqualTo(String value) {
            addCriterion("laihuoshuliang =", value, "laihuoshuliang");
            return this;
        }

        public Criteria andLaihuoshuliangNotEqualTo(String value) {
            addCriterion("laihuoshuliang <>", value, "laihuoshuliang");
            return this;
        }

        public Criteria andLaihuoshuliangGreaterThan(String value) {
            addCriterion("laihuoshuliang >", value, "laihuoshuliang");
            return this;
        }

        public Criteria andLaihuoshuliangGreaterThanOrEqualTo(String value) {
            addCriterion("laihuoshuliang >=", value, "laihuoshuliang");
            return this;
        }

        public Criteria andLaihuoshuliangLessThan(String value) {
            addCriterion("laihuoshuliang <", value, "laihuoshuliang");
            return this;
        }

        public Criteria andLaihuoshuliangLessThanOrEqualTo(String value) {
            addCriterion("laihuoshuliang <=", value, "laihuoshuliang");
            return this;
        }

        public Criteria andLaihuoshuliangLike(String value) {
            addCriterion("laihuoshuliang like", value, "laihuoshuliang");
            return this;
        }

        public Criteria andLaihuoshuliangNotLike(String value) {
            addCriterion("laihuoshuliang not like", value, "laihuoshuliang");
            return this;
        }

        public Criteria andLaihuoshuliangIn(List values) {
            addCriterion("laihuoshuliang in", values, "laihuoshuliang");
            return this;
        }

        public Criteria andLaihuoshuliangNotIn(List values) {
            addCriterion("laihuoshuliang not in", values, "laihuoshuliang");
            return this;
        }

        public Criteria andLaihuoshuliangBetween(String value1, String value2) {
            addCriterion("laihuoshuliang between", value1, value2, "laihuoshuliang");
            return this;
        }

        public Criteria andLaihuoshuliangNotBetween(String value1, String value2) {
            addCriterion("laihuoshuliang not between", value1, value2, "laihuoshuliang");
            return this;
        }

        public Criteria andShishoushuliangIsNull() {
            addCriterion("shishoushuliang is null");
            return this;
        }

        public Criteria andShishoushuliangIsNotNull() {
            addCriterion("shishoushuliang is not null");
            return this;
        }

        public Criteria andShishoushuliangEqualTo(String value) {
            addCriterion("shishoushuliang =", value, "shishoushuliang");
            return this;
        }

        public Criteria andShishoushuliangNotEqualTo(String value) {
            addCriterion("shishoushuliang <>", value, "shishoushuliang");
            return this;
        }

        public Criteria andShishoushuliangGreaterThan(String value) {
            addCriterion("shishoushuliang >", value, "shishoushuliang");
            return this;
        }

        public Criteria andShishoushuliangGreaterThanOrEqualTo(String value) {
            addCriterion("shishoushuliang >=", value, "shishoushuliang");
            return this;
        }

        public Criteria andShishoushuliangLessThan(String value) {
            addCriterion("shishoushuliang <", value, "shishoushuliang");
            return this;
        }

        public Criteria andShishoushuliangLessThanOrEqualTo(String value) {
            addCriterion("shishoushuliang <=", value, "shishoushuliang");
            return this;
        }

        public Criteria andShishoushuliangLike(String value) {
            addCriterion("shishoushuliang like", value, "shishoushuliang");
            return this;
        }

        public Criteria andShishoushuliangNotLike(String value) {
            addCriterion("shishoushuliang not like", value, "shishoushuliang");
            return this;
        }

        public Criteria andShishoushuliangIn(List values) {
            addCriterion("shishoushuliang in", values, "shishoushuliang");
            return this;
        }

        public Criteria andShishoushuliangNotIn(List values) {
            addCriterion("shishoushuliang not in", values, "shishoushuliang");
            return this;
        }

        public Criteria andShishoushuliangBetween(String value1, String value2) {
            addCriterion("shishoushuliang between", value1, value2, "shishoushuliang");
            return this;
        }

        public Criteria andShishoushuliangNotBetween(String value1, String value2) {
            addCriterion("shishoushuliang not between", value1, value2, "shishoushuliang");
            return this;
        }

        public Criteria andChandiIsNull() {
            addCriterion("chandi is null");
            return this;
        }

        public Criteria andChandiIsNotNull() {
            addCriterion("chandi is not null");
            return this;
        }

        public Criteria andChandiEqualTo(String value) {
            addCriterion("chandi =", value, "chandi");
            return this;
        }

        public Criteria andChandiNotEqualTo(String value) {
            addCriterion("chandi <>", value, "chandi");
            return this;
        }

        public Criteria andChandiGreaterThan(String value) {
            addCriterion("chandi >", value, "chandi");
            return this;
        }

        public Criteria andChandiGreaterThanOrEqualTo(String value) {
            addCriterion("chandi >=", value, "chandi");
            return this;
        }

        public Criteria andChandiLessThan(String value) {
            addCriterion("chandi <", value, "chandi");
            return this;
        }

        public Criteria andChandiLessThanOrEqualTo(String value) {
            addCriterion("chandi <=", value, "chandi");
            return this;
        }

        public Criteria andChandiLike(String value) {
            addCriterion("chandi like", value, "chandi");
            return this;
        }

        public Criteria andChandiNotLike(String value) {
            addCriterion("chandi not like", value, "chandi");
            return this;
        }

        public Criteria andChandiIn(List values) {
            addCriterion("chandi in", values, "chandi");
            return this;
        }

        public Criteria andChandiNotIn(List values) {
            addCriterion("chandi not in", values, "chandi");
            return this;
        }

        public Criteria andChandiBetween(String value1, String value2) {
            addCriterion("chandi between", value1, value2, "chandi");
            return this;
        }

        public Criteria andChandiNotBetween(String value1, String value2) {
            addCriterion("chandi not between", value1, value2, "chandi");
            return this;
        }

        public Criteria andBeizhuIsNull() {
            addCriterion("beizhu is null");
            return this;
        }

        public Criteria andBeizhuIsNotNull() {
            addCriterion("beizhu is not null");
            return this;
        }

        public Criteria andBeizhuEqualTo(String value) {
            addCriterion("beizhu =", value, "beizhu");
            return this;
        }

        public Criteria andBeizhuNotEqualTo(String value) {
            addCriterion("beizhu <>", value, "beizhu");
            return this;
        }

        public Criteria andBeizhuGreaterThan(String value) {
            addCriterion("beizhu >", value, "beizhu");
            return this;
        }

        public Criteria andBeizhuGreaterThanOrEqualTo(String value) {
            addCriterion("beizhu >=", value, "beizhu");
            return this;
        }

        public Criteria andBeizhuLessThan(String value) {
            addCriterion("beizhu <", value, "beizhu");
            return this;
        }

        public Criteria andBeizhuLessThanOrEqualTo(String value) {
            addCriterion("beizhu <=", value, "beizhu");
            return this;
        }

        public Criteria andBeizhuLike(String value) {
            addCriterion("beizhu like", value, "beizhu");
            return this;
        }

        public Criteria andBeizhuNotLike(String value) {
            addCriterion("beizhu not like", value, "beizhu");
            return this;
        }

        public Criteria andBeizhuIn(List values) {
            addCriterion("beizhu in", values, "beizhu");
            return this;
        }

        public Criteria andBeizhuNotIn(List values) {
            addCriterion("beizhu not in", values, "beizhu");
            return this;
        }

        public Criteria andBeizhuBetween(String value1, String value2) {
            addCriterion("beizhu between", value1, value2, "beizhu");
            return this;
        }

        public Criteria andBeizhuNotBetween(String value1, String value2) {
            addCriterion("beizhu not between", value1, value2, "beizhu");
            return this;
        }
    }
}
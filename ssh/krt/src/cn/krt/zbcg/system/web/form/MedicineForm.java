/*     */ package cn.krt.zbcg.system.web.form;
/*     */ 
/*     */ import cn.krt.zbcg.commons.bo.system.MedicineBO;

import org.apache.struts.upload.FormFile;
/*     */ import org.ssi.struts.actionform.BaseForm;
/*     */ 
/*     */ public class MedicineForm extends BaseForm
/*     */ {
/*  13 */   private MedicineBO medicineBO = new MedicineBO();
/*     */   private Integer medicineId;
/*     */   private String medicineName;
/*     */   private String beginDate;
/*     */   private String endDate;
/*     */   private String zlyq;
/*     */   private String remark;
			private String filechanged;
			public String getFilechanged() {
				return filechanged;
			}
			public void setFilechanged(String filechanged) {
				this.filechanged = filechanged;
			}
/*     */   public String getRemark()
/*     */   {
/*  44 */     return this.remark;
/*     */   }
/*     */ 
/*     */   public void setRemark(String remark) {
/*  48 */     this.remark = remark;
/*     */   }
/*     */ 
/*     */   public MedicineBO getMedicineBO()
/*     */   {
/*  53 */     return this.medicineBO;
/*     */   }
/*     */ 
/*     */   public void setMedicineBO(MedicineBO medicineBO) {
/*  57 */     this.medicineBO = medicineBO;
/*     */   }
/*     */ 
/*     */   public Integer getMedicineId()
/*     */   {
/*  69 */     return this.medicineId;
/*     */   }
/*     */ 
/*     */   public void setMedicineId(Integer medicineId)
/*     */   {
/*  81 */     this.medicineId = medicineId;
/*     */   }
/*     */ 
/*     */   public String getMedicineName()
/*     */   {
/*  93 */     return this.medicineName;
/*     */   }
/*     */ 
/*     */   public void setMedicineName(String medicineName)
/*     */   {
/* 105 */     this.medicineName = medicineName;
/*     */   }
/*     */ 
/*     */   public String getZlyq()
/*     */   {
/* 117 */     return this.zlyq;
/*     */   }
/*     */ 
/*     */   public void setZlyq(String zlyq)
/*     */   {
/* 129 */     this.zlyq = zlyq;
/*     */   }
/*     */ 
/*     */   public String getBeginDate() {
/* 133 */     return this.beginDate;
/*     */   }
/*     */ 
/*     */   public void setBeginDate(String beginDate) {
/* 137 */     this.beginDate = beginDate;
/*     */   }
/*     */ 
/*     */   public String getEndDate() {
/* 141 */     return this.endDate;
/*     */   }
/*     */ 
/*     */   public void setEndDate(String endDate) {
/* 145 */     this.endDate = endDate;
/*     */   }
/*     */ }

/* Location:           D:\李慧医药项目\tcmages\krt\WEB-INF\classes\
 * Qualified Name:     cn.krt.zbcg.system.web.form.MedicineForm
 * JD-Core Version:    0.6.2
 */
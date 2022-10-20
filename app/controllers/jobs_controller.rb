class JobsController < ApplicationController
  def new
  end

  def create
    job = Job.new(job_params)
    job.save
    redirect_to jobs_path
  end

  def index
    @job = Job.new
    @jobs = Job.all

    # 書類選考中
    @jobs1_0 = Job.where(document_pass: "0")
    # 書類落選
    @jobs1_1 = Job.where(document_pass: "1")
    # 書類通過
    @jobs1_2 = Job.where(document_pass: "2")

    # 面接ー
    @jobs2_0 = Job.where(interview_pass: "0")
    # 面接選考中
    @jobs2_1 = Job.where(interview_pass: "1")
    # 面接落選
    @jobs2_2 = Job.where(interview_pass: "2")
    # 面接通過
    @jobs2_3 = Job.where(interview_pass: "3")


    # 内定ー
    @jobs3_0 = Job.where(unofficial_offer: "0")
    # 内定選考中
    @jobs3_1 = Job.where(unofficial_offer: "1")
    # 内定落選
    @jobs3_2 = Job.where(unofficial_offer: "2")
    # 内定
    @jobs3_3 = Job.where(unofficial_offer: "3")
  end

  def show
  end

  def edit
    @job=Job.find(params[:id])
  end

  def update
    job=Job.find(params[:id])
    job.update(job_params)
    redirect_to jobs_path
  end

  def destroy
    job=Job.find(params[:id])
    job.destroy
    redirect_to jobs_path
  end

  private

  def job_params
    params.require(:job).permit(:company_name,:document_pass,:interview_pass,:unofficial_offer)
  end
end

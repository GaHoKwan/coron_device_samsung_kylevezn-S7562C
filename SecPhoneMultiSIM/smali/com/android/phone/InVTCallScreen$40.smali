.class Lcom/android/phone/InVTCallScreen$40;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Lsiso/vt/VTManager$VTStackStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 10941
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lsiso/vt/VTManager$VTEventForUI;Lsiso/vt/VideoTelephonyData;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10943
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inside VTStackStateListener:: onStateChanged State ::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v3, v1}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;Z)V

    .line 10945
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_FIRST_VIDEO_FRAME_DECODED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_8

    .line 10947
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 10948
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10950
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10951
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f0e0403

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 10954
    :cond_1
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8700(Lcom/android/phone/InVTCallScreen;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8700(Lcom/android/phone/InVTCallScreen;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10955
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsNoDataFromModem:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$12402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 10956
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 10957
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12000(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x6

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10961
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsFirstVideoFrameDecoded:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 10962
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-eqz v0, :cond_5

    .line 10963
    const-string v0, "kor_cs_vt_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10964
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10965
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 10967
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10968
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 10971
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10972
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 10976
    :cond_5
    const-string v0, "kor_cs_vt_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10978
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->hideFarEnViewAnim()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13100(Lcom/android/phone/InVTCallScreen;)V

    .line 10979
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2202(Z)Z

    .line 10982
    :cond_6
    const-string v0, "kor_qc_cs_vt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10983
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "H324M_VT_FIRST_VIDEO_FRAME_DECODED"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 10984
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mMuteEnable:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$3802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 10985
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMuteEnable:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$3800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    #calls: Lcom/android/phone/InVTCallScreen;->updateMuteButton(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$3900(Lcom/android/phone/InVTCallScreen;Z)V

    .line 10986
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11501
    :cond_7
    :goto_0
    return-void

    .line 10988
    :cond_8
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_RECIEVED_DATA_IND:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_a

    .line 10990
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8700(Lcom/android/phone/InVTCallScreen;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8700(Lcom/android/phone/InVTCallScreen;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10991
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "H324M_VT_RECIEVED_DATA_IND : Multiwindow"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 10992
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsNoDataFromModem:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$12402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 10993
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 10994
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12000(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 10997
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "H324M_VT_RECIEVED_DATA_IND"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 10999
    :cond_a
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_NO_DATA_ERR_IND:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_b

    .line 11001
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsNoDataFromModem:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$12402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11002
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "H324M_VT_NO_DATA_ERR_IND"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 11003
    :cond_b
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_VIDEO_TX_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_10

    .line 11006
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11007
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13300(Lcom/android/phone/InVTCallScreen;)V

    .line 11009
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8000(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8100(Lcom/android/phone/InVTCallScreen;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 11010
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "Camera desabled due DPM\t- INTENT_MSG_SECURITY"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11011
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const v1, 0x7f0e03dd

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 11016
    :cond_d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8000(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8100(Lcom/android/phone/InVTCallScreen;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_f

    .line 11018
    :cond_e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->enableHideMeState()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 11020
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11021
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    .line 11022
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x3

    #setter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7902(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_0

    .line 11026
    :cond_10
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_CALL_DEINITIALIZED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_2b

    .line 11027
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "onStateChanged: for H324M_VT_CALL_DEINITIALIZED"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11028
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$2602(Z)Z

    .line 11030
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsShowEndCallScreenStarted:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 11031
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$13500(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11034
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13800(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 11039
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$4300(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 11041
    if-eqz v0, :cond_65

    .line 11042
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v4, v0

    .line 11044
    :goto_1
    if-eqz v4, :cond_64

    .line 11045
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 11046
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 11047
    if-nez v0, :cond_1c

    move v3, v1

    .line 11048
    :goto_2
    if-nez v0, :cond_1d

    move v0, v1

    .line 11049
    :goto_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    .line 11051
    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v6, v7, :cond_12

    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v6, v7, :cond_12

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    move v0, v2

    move v3, v2

    .line 11060
    :cond_13
    :goto_4
    const-string v4, "support_multisim_ver2"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v4

    if-lt v4, v8, :cond_20

    .line 11061
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 11063
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim2:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim2:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 11064
    :cond_14
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim1:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/phone/InVTCallScreen;->access$14000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim1:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/phone/InVTCallScreen;->access$14000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 11065
    :cond_15
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/phone/InVTCallScreen;->access$13600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/phone/InVTCallScreen;->access$13600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 11067
    :cond_16
    if-eqz v3, :cond_18

    .line 11068
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim1:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$14000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 11069
    invoke-static {v4, v2}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 11070
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim1:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$14000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    invoke-static {v4, v2}, Lcom/android/phone/PhoneDualSimUtils;->getCallSimIcon(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v2, v6, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 11071
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim1:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$14000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11078
    :cond_17
    :goto_5
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim2:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 11079
    invoke-static {v4, v1}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 11080
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim2:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    invoke-static {v4, v1}, Lcom/android/phone/PhoneDualSimUtils;->getCallSimIcon(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v2, v4, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 11081
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim2:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11095
    :cond_18
    :goto_6
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$13700(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v0, :cond_23

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11096
    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 11097
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIpCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 11098
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIpCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11100
    :cond_19
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13800(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11102
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 11103
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->releaseVTManager()V

    .line 11104
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->deinitVTManager()V

    .line 11105
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0, v5}, Lcom/android/phone/InVTCallScreen;->access$2902(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;

    .line 11108
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 11109
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 11110
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    :cond_1c
    move v3, v2

    .line 11047
    goto/16 :goto_2

    :cond_1d
    move v0, v2

    .line 11048
    goto/16 :goto_3

    .line 11073
    :cond_1e
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim1:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$14000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    invoke-static {v4, v2}, Lcom/android/phone/PhoneDualSimUtils;->getCallSimIconDim(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v2, v6, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 11074
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim1:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$14000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_5

    .line 11083
    :cond_1f
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim2:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    invoke-static {v4, v1}, Lcom/android/phone/PhoneDualSimUtils;->getCallSimIconDim(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v2, v4, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 11084
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim2:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_6

    .line 11089
    :cond_20
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$13600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v4

    if-eqz v3, :cond_22

    move v3, v1

    :goto_8
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11091
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim2:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim2:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$13900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 11092
    :cond_21
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim1:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$14000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButtonSim1:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$14000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    :cond_22
    move v3, v2

    .line 11089
    goto :goto_8

    :cond_23
    move v0, v2

    .line 11095
    goto/16 :goto_7

    .line 11111
    :cond_24
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 11112
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)V

    .line 11113
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$2800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 11115
    :cond_25
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 11120
    :cond_26
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 11121
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 11122
    :cond_27
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 11123
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)V

    .line 11124
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/InVTCallScreen;->access$2800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 11125
    :cond_28
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7500(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 11126
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7500(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 11127
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 11132
    :cond_29
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 11135
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 11141
    :cond_2b
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_END_CALL_REQUEST:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_2c

    .line 11142
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "onStateChanged: for H324M_VT_END_CALL_REQUEST"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11143
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    .line 11144
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2402(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 11145
    :cond_2c
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_SESSION_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_2d

    .line 11146
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "onStateChanged: for H324M_VT_SESSION_STOP_SUCCESS"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11147
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2402(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11149
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11150
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->cleanupCall()V

    goto/16 :goto_0

    .line 11154
    :cond_2d
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_PROTOCOL_ERR_IND:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_2f

    .line 11155
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "onStateChanged: for H324M_VT_PROTOCOL_ERR_IND"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11156
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 11158
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "51010"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 11159
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    .line 11160
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2402(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 11164
    :cond_2e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "onStateChanged: keep current Call state for special operator of Exception handling[H324M_VT_PROTOCOL_ERR_IND]"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11166
    :cond_2f
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_30

    .line 11167
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "onStateChanged: for H324M_IC_START_FAILURE"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11171
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const v1, 0x7f0e03df

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$14300(Lcom/android/phone/InVTCallScreen;I)V

    goto/16 :goto_0

    .line 11173
    :cond_30
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_SUCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_38

    .line 11174
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "onStateChanged: for H324M_IC_START_SUCESS"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11175
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 11176
    const-string v0, "kor_cs_vt_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9700(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$4900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 11178
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$9700(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$14602(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11179
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 11182
    :cond_31
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5502(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11184
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 11185
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "H324M_IC_START_SUCESS:: Preset Image Enabled"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11186
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5602(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11187
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$14502(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11193
    :goto_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$9700(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$14702(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11194
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7902(Lcom/android/phone/InVTCallScreen;I)I

    .line 11196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsShowingEmotionalAni:Z

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsShowingThemeView:Z

    if-eqz v0, :cond_33

    .line 11197
    :cond_32
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerInfoLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11198
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mEmotionalAniLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11199
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mThemeViewLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11200
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mPartyThemeLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11201
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mAnimalThemeLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11202
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mGlassesThemeLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11203
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHatThemeLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11204
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMustacheThemeLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11205
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-eqz v0, :cond_37

    .line 11206
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureRecordBtnLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11214
    :cond_33
    :goto_a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecordOrCaptureProgressive:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 11215
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 11216
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$13000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11218
    :cond_34
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11219
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecordOrCaptureProgressive:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$15902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11222
    :cond_35
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$4902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11223
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$14402(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 11189
    :cond_36
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "H324M_IC_START_SUCESS:: Preset Image Desabled"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11190
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5602(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_9

    .line 11208
    :cond_37
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMainLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMainLayoutNormalDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$15700(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 11225
    :cond_38
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_VIDEO_DEACTIVATED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_39

    .line 11226
    const-string v0, "InVTCallScreen"

    const-string v1, "CHH onStateChanged: H324M_IC_VIDEO_DEACTIVATED"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11227
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f0e04bb

    invoke-virtual {v3, v4}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$14602(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11231
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 11232
    :cond_39
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_VIDEO_ACTIVATED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_3a

    .line 11233
    const-string v0, "InVTCallScreen"

    const-string v1, "CHH onStateChanged: H324M_IC_VIDEO_ACTIVATED"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11234
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f0e04bc

    invoke-virtual {v3, v4}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$14602(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11238
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 11239
    :cond_3a
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_3c

    .line 11240
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "onStateChanged: for H324M_REC_START_FAILURE"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11241
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0e0404

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$14300(Lcom/android/phone/InVTCallScreen;I)V

    .line 11242
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 11243
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11244
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11245
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 11246
    :cond_3b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11247
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/phone/InVTCallScreen;->access$16002(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11248
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$1600(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    .line 11251
    :cond_3c
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_3d

    .line 11252
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "onStateChanged: for H324M_REC_START_SUCCESS"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11253
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11254
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 11255
    :cond_3d
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_43

    .line 11256
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8700(Lcom/android/phone/InVTCallScreen;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$8700(Lcom/android/phone/InVTCallScreen;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 11257
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_40

    .line 11258
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12000(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x5

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11271
    :cond_3e
    :goto_b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    if-eqz v0, :cond_3f

    .line 11273
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v2, v0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    .line 11275
    :cond_3f
    const-string v0, "InVTCallScreen:: "

    const-string v3, "VTMNGR_CAMERA_START_SUCCESS "

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11276
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v1, v0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 11277
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11278
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsSwitchCameraAnimationStarted:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11279
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsSwitchCameraAnimationStarted:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$6702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11280
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb5

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 11260
    :cond_40
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v8, :cond_3e

    .line 11261
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12000(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x5

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    .line 11264
    :cond_41
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_42

    .line 11265
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12000(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x5

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    .line 11267
    :cond_42
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v8, :cond_3e

    .line 11268
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12000(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x5

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    .line 11282
    :cond_43
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_44

    .line 11283
    const-string v0, "InVTCallScreen:: "

    const-string v3, "VTMNGR_CAMERA_START_FAILURE"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11284
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5502(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11285
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v2, v0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 11286
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    .line 11287
    :cond_44
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_48

    .line 11288
    const-string v0, "InVTCallScreen:: "

    const-string v3, "H324M_REC_STOP_SUCCESS"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11289
    invoke-static {}, Lcom/android/phone/MediaLowSpaceReceiver;->unRegisterLowMemoryListner()V

    .line 11290
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 11291
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const v7, 0x7f0e0405

    invoke-virtual {v6, v7}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/InVTCallScreen;->access$16000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const v7, 0x7f0e0406

    invoke-virtual {v6, v7}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$14602(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11298
    :goto_c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 11299
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 11301
    :cond_45
    new-array v0, v1, [Ljava/lang/String;

    .line 11302
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$16000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 11303
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Lcom/android/phone/InVTCallScreen$40$1;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$40$1;-><init>(Lcom/android/phone/InVTCallScreen$40;)V

    invoke-static {v1, v0, v5, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 11309
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$16102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11311
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16200(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndRecordStopped:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$16300(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    if-ne v0, v1, :cond_47

    .line 11313
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16400(Lcom/android/phone/InVTCallScreen;)V

    .line 11314
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, -0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$16202(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_0

    .line 11295
    :cond_46
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/InVTCallScreen;->access$16000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const v7, 0x7f0e0406

    invoke-virtual {v6, v7}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$14602(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_c

    .line 11315
    :cond_47
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16200(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndRecordStopped:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$16500(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 11317
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16600(Lcom/android/phone/InVTCallScreen;)V

    .line 11318
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, -0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$16202(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_0

    .line 11320
    :cond_48
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_MAX_TIMEOUT:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_4b

    .line 11321
    const-string v0, "InVTCallScreen:: "

    const-string v3, "H324M_REC_MAX_TIMEOUT"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11322
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 11323
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)V

    .line 11325
    :cond_49
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 11326
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$1600(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11328
    :cond_4a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$16000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const v6, 0x7f0e0406

    invoke-virtual {v5, v6}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$14602(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11330
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$16102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11331
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11332
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 11334
    :cond_4b
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_4f

    .line 11335
    const-string v0, "InVTCallScreen:: "

    const-string v3, "H324M_REC_PROTOCOL_ERROR"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11336
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 11337
    const-string v0, "vt_audio_mixed_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 11338
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingAudio()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;)V

    .line 11343
    :cond_4c
    :goto_d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 11344
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$1600(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11346
    :cond_4d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/InVTCallScreen;->access$16000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const v6, 0x7f0e0406

    invoke-virtual {v5, v6}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$14602(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 11348
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$16102(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 11340
    :cond_4e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_d

    .line 11350
    :cond_4f
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_51

    .line 11351
    const-string v0, "InVTCallScreen:: "

    const-string v2, "H324M_REC_PROTOCOL_ERROR"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11352
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 11353
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)V

    .line 11355
    :cond_50
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11356
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$1600(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    .line 11359
    :cond_51
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_55

    .line 11361
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5502(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11362
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;Z)V

    .line 11363
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;)V

    .line 11365
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-eqz v0, :cond_52

    .line 11366
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->invalidateOptionsMenu()V

    .line 11369
    :cond_52
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->handlingSwitchCameraButton()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$16700(Lcom/android/phone/InVTCallScreen;)V

    .line 11371
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5300(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$14702(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11372
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0, v8}, Lcom/android/phone/InVTCallScreen;->access$7902(Lcom/android/phone/InVTCallScreen;I)I

    .line 11374
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsShowingEmotionalAni:Z

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsShowingThemeView:Z

    if-eqz v0, :cond_7

    .line 11375
    :cond_53
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallerInfoLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11376
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mEmotionalAniLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$14900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11377
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mThemeViewLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11378
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mPartyThemeLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15100(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11379
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mAnimalThemeLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11380
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mGlassesThemeLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11381
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHatThemeLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11382
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMustacheThemeLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11383
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-eqz v0, :cond_54

    .line 11384
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureRecordBtnLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 11386
    :cond_54
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMainLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$15800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMainLayoutNormalDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$15700(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 11389
    :cond_55
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_56

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_56

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_56

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_56

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_FILE_READ_ERR:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_56

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v0, :cond_56

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_59

    .line 11396
    :cond_56
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const v3, 0x7f0e03df

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$14300(Lcom/android/phone/InVTCallScreen;I)V

    .line 11398
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11399
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7900(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_58

    .line 11400
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7900(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v1, :cond_57

    .line 11401
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11402
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11403
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$14700(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$9702(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11416
    :goto_e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/phone/InVTCallScreen;->access$14702(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 11417
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->show_camera()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 11406
    :cond_57
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11407
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11408
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$14700(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5302(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_e

    .line 11411
    :cond_58
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11412
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11413
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5502(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_e

    .line 11419
    :cond_59
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_ALL_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_5a

    .line 11420
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "H324M_VT_ALL_OLC_ESTABLISHED"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11421
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isAllOLC:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$16802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11422
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mAllOlcOpened:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$16902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11423
    const-string v0, "vt_multimedia_ringback_tone_timer"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11424
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11425
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6900(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xaa

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 11427
    :cond_5a
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_MRBT_START:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_5b

    .line 11428
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "H324M_VT_MRBT_START"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11429
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mMRBTstart:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7202(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 11430
    :cond_5b
    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_MRBT_END:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_5d

    .line 11431
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v3, "H324M_VT_MRBT_END"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11432
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mMRBTend:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7302(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 11433
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7400(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11434
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7400(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7500(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 11435
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7400(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 11436
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7400(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->startMRBTTimer()V

    .line 11437
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 11438
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7400(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 11439
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7400(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/CallTime;

    invoke-static {}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    .line 11441
    :cond_5c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11442
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 11446
    :cond_5d
    const-string v0, "kor_cs_vt_network_operator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_VMS_MODE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_5e

    .line 11448
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "VTMNGR_VMS_MODE"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11449
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$11802(Z)Z

    goto/16 :goto_0

    .line 11451
    :cond_5e
    const-string v0, "kor_cs_vt_network_operator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_USER_INDICATION:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v0, :cond_7

    .line 11453
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "onUserIndication"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11454
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "object id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getObjectMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11455
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11456
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user data len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getDataLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11458
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getObjectMode()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 11460
    const-string v0, ".*VMode_0.*"

    .line 11461
    const-string v1, ".*VMode_1.*"

    .line 11462
    const-string v2, ".*VMode_2.*"

    .line 11463
    const-string v3, ".*VMode_3.*"

    .line 11464
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    .line 11465
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getDataLen()I

    .line 11467
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v4, v4, Lcom/android/phone/InVTCallScreen;->isRemoteModeControl:Z

    if-eqz v4, :cond_63

    .line 11469
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v5, "isRemoteModeControl true"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 11470
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 11472
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisplaySize_Old()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$17000(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 11474
    :cond_5f
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 11476
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->getDisplayMode()Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->setOldDisplayMode(Lcom/android/phone/InVTCallScreen$VideoDisplayMode;)V

    .line 11477
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisplaySize_Big()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$17100(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 11479
    :cond_60
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 11481
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->getDisplayMode()Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->setOldDisplayMode(Lcom/android/phone/InVTCallScreen$VideoDisplayMode;)V

    .line 11482
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisplaySize_Small()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$17200(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 11484
    :cond_61
    invoke-virtual {p2}, Lsiso/vt/VideoTelephonyData;->getUserData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 11486
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->getDisplayMode()Lcom/android/phone/InVTCallScreen$VideoDisplayMode;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->setOldDisplayMode(Lcom/android/phone/InVTCallScreen$VideoDisplayMode;)V

    .line 11487
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisplaySize_BigOnly()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$17300(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 11491
    :cond_62
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "Not support VMode"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11496
    :cond_63
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "isRemoteModeControl false"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_64
    move v0, v1

    move v3, v1

    goto/16 :goto_4

    :cond_65
    move-object v4, v5

    goto/16 :goto_1
.end method

.class final Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;
.super Ljava/lang/Object;
.source "CallLogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->openBlockNumberSettingDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$rejectNumer:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$rejectNumer:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 836
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mOriginalBlcokNumberSetting:[Z

    aget-boolean v0, v0, v3

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    aget-boolean v1, v1, v3

    if-eq v0, v1, :cond_0

    .line 837
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_4

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVoiceCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 841
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->updateVoiceCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, v0, v3

    .line 852
    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mOriginalBlcokNumberSetting:[Z

    aget-boolean v0, v0, v4

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    aget-boolean v1, v1, v4

    if-eq v0, v1, :cond_1

    .line 853
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_6

    .line 855
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkMessageunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 857
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->updateMessageunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, v0, v4

    .line 868
    :cond_1
    :goto_1
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 869
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->bIsShowingDlg:Z

    .line 871
    :cond_2
    return-void

    .line 845
    :cond_3
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, v0, v3

    goto :goto_0

    .line 848
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 861
    :cond_5
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockMessageContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, v0, v4

    goto :goto_1

    .line 864
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockMessageContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

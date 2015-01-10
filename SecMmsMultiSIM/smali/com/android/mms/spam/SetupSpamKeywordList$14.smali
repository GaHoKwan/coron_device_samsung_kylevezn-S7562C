.class Lcom/android/mms/spam/SetupSpamKeywordList$14;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;->updateDeleteModeActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0
    .parameter

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$14;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 1082
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$14;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$600(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$14;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2000(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$14;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2000(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$14;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2000(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1086
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$14;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2002(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$14;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-virtual {v0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->softkeyLeftRun(Landroid/view/View;)V

    .line 1090
    :cond_1
    return-void
.end method

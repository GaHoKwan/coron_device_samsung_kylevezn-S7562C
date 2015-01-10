.class Lcom/android/mms/spam/SetupSpamKeywordList$15;
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
    .line 1093
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2100(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2100(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$600(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$15;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->softkeyRightRun(Landroid/view/View;)V

    .line 1100
    :cond_1
    return-void
.end method

.class Lcom/android/mms/spam/SetupSpamNumberList$15;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberList;->updateDeleteModeActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$15;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$15;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$2200(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$15;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$2200(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$15;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$15;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/spam/SetupSpamNumberList;->softkeyRightRun(Landroid/view/View;)V

    .line 1353
    :cond_1
    return-void
.end method

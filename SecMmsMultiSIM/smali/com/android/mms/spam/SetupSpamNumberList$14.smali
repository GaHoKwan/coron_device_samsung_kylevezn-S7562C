.class Lcom/android/mms/spam/SetupSpamNumberList$14;
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
    .line 1332
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$14;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 1335
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$14;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$300(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1336
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$14;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$2100(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$14;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$2100(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$14;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$2100(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1338
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$14;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #setter for: Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$2102(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$14;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-virtual {v0, v2}, Lcom/android/mms/spam/SetupSpamNumberList;->softkeyLeftRun(Landroid/view/View;)V

    .line 1343
    :cond_1
    return-void
.end method

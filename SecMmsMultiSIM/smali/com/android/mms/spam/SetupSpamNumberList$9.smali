.class Lcom/android/mms/spam/SetupSpamNumberList$9;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberList;->softkeyRightRun(Landroid/view/View;)V
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
    .line 497
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$9;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$9;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I
    invoke-static {v0, v1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$302(Lcom/android/mms/spam/SetupSpamNumberList;I)I

    .line 500
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$9;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1500(Lcom/android/mms/spam/SetupSpamNumberList;)V

    .line 501
    return-void
.end method

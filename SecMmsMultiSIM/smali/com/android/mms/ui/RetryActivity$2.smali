.class Lcom/android/mms/ui/RetryActivity$2;
.super Ljava/lang/Object;
.source "RetryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RetryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RetryActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RetryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/mms/ui/RetryActivity$2;->this$0:Lcom/android/mms/ui/RetryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity$2;->this$0:Lcom/android/mms/ui/RetryActivity;

    #calls: Lcom/android/mms/ui/RetryActivity;->moveMessageToFail()V
    invoke-static {v0}, Lcom/android/mms/ui/RetryActivity;->access$000(Lcom/android/mms/ui/RetryActivity;)V

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity$2;->this$0:Lcom/android/mms/ui/RetryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 89
    return-void
.end method

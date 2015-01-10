.class Lcom/android/mms/ui/FakeCallActivity$3;
.super Ljava/lang/Object;
.source "FakeCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FakeCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FakeCallActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FakeCallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/mms/ui/FakeCallActivity$3;->this$0:Lcom/android/mms/ui/FakeCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/FakeCallActivity$3;->this$0:Lcom/android/mms/ui/FakeCallActivity;

    #getter for: Lcom/android/mms/ui/FakeCallActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/ui/FakeCallActivity;->access$000(Lcom/android/mms/ui/FakeCallActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/mms/ui/FakeCallActivity$3;->this$0:Lcom/android/mms/ui/FakeCallActivity;

    #getter for: Lcom/android/mms/ui/FakeCallActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/ui/FakeCallActivity;->access$000(Lcom/android/mms/ui/FakeCallActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 138
    :cond_0
    return-void
.end method

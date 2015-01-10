.class Lcom/android/contacts/quickcontact/QuickContactActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    invoke-virtual {v0, p2, p1}, Lcom/android/contacts/VoLTEStateTracker;->isVoLteEnabled(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$602(Z)Z

    .line 448
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$600()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->updateImage(Z)V

    .line 450
    return-void
.end method

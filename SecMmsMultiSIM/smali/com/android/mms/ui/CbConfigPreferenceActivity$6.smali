.class Lcom/android/mms/ui/CbConfigPreferenceActivity$6;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$6;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$6;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChannelUtils;->removeChannel(Landroid/content/Context;I)V

    .line 427
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$6;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    #calls: Lcom/android/mms/ui/CbConfigPreferenceActivity;->refreshMyChannel()V
    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$300(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    .line 429
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$6;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 430
    return-void
.end method

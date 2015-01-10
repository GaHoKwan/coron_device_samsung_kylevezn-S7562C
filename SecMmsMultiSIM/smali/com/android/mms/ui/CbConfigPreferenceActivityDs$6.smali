.class Lcom/android/mms/ui/CbConfigPreferenceActivityDs$6;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivityDs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$6;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$6;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChannelUtils;->removeChannel(Landroid/content/Context;I)V

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$6;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    #calls: Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->refreshMyChannel()V
    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivityDs;->access$300(Lcom/android/mms/ui/CbConfigPreferenceActivityDs;)V

    .line 428
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivityDs$6;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivityDs;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 429
    return-void
.end method

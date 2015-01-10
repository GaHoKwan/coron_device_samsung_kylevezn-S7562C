.class Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 1150
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$200(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1151
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$200(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1153
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$4;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1155
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.class Lcom/android/contacts/activities/ContactDetailActivity$3$2;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactDetailActivity$3;->onEditRequested(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity$3;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$2;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$2;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$200(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->disableAutoUpdate()V

    .line 605
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$2;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 606
    return-void
.end method

.class Lcom/android/contacts/interactions/AddToRejectListInteraction$4;
.super Ljava/lang/Object;
.source "AddToRejectListInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/AddToRejectListInteraction;->showHasSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

.field final synthetic val$result:Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$4;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    iput-object p2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$4;->val$result:Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 302
    new-instance v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;

    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$4;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V

    .line 303
    .local v0, task:Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$4;->val$result:Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 304
    return-void
.end method

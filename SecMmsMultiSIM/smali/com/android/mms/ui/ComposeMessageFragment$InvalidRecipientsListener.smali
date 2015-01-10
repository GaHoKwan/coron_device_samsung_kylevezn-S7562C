.class Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidRecipientsListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/InvalidRecipientsListener"


# instance fields
.field private mInvalidRecipients:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "invalidRecipients"

    .prologue
    .line 1985
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1986
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->mInvalidRecipients:Ljava/lang/String;

    .line 1987
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1977
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1978
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->mInvalidRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1979
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->mInvalidRecipients:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1980
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SipHandler;->showSipDelayed(Landroid/os/Handler;I)V

    .line 1983
    :cond_0
    return-void
.end method

.class Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;
.super Ljava/lang/Object;
.source "GroupMessagingRecipientListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/GroupMessagingRecipientListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidRecipientsKeyListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/InvalidRecipientsListener"


# instance fields
.field private mInvalidRecipients:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "invalidRecipients"

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput-object p2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;->mInvalidRecipients:Ljava/lang/String;

    .line 590
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 594
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 595
    packed-switch p2, :pswitch_data_0

    .line 606
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 597
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 598
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    #getter for: Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->access$500(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 599
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    #getter for: Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->access$500(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;->mInvalidRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    #getter for: Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->access$500(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;->mInvalidRecipients:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 601
    const/4 v0, 0x1

    goto :goto_0

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
.class Lcom/android/mms/ui/ComposeMessageFragment$InvalidSenderListener;
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
    name = "InvalidSenderListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/InvalidSenderListener"


# instance fields
.field private mInvalidSender:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "invalidSender"

    .prologue
    .line 3082
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidSenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3083
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidSenderListener;->mInvalidSender:Ljava/lang/String;

    .line 3084
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3087
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidSenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSenderEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3088
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidSenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSenderEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidSenderListener;->mInvalidSender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3089
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidSenderListener;->mInvalidSender:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3090
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidSenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSenderEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidSenderListener;->mInvalidSender:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3091
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidSenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->m_lOldShowDialogTime:J

    .line 3092
    return-void
.end method

.class public Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SevenDigitNumericListener"
.end annotation


# instance fields
.field private m7DigitNumericNumber:Ljava/lang/String;

.field private mId:I

.field private mSendSimSlot:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter "number"
    .parameter "sendSimSlot"

    .prologue
    const/4 v1, -0x1

    .line 17979
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17975
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->m7DigitNumericNumber:Ljava/lang/String;

    .line 17976
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->mId:I

    .line 17977
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->mSendSimSlot:I

    .line 17980
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->m7DigitNumericNumber:Ljava/lang/String;

    .line 17981
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->mId:I

    .line 17982
    iput p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->mSendSimSlot:I

    .line 17983
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 17986
    packed-switch p2, :pswitch_data_0

    .line 17999
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 18000
    return-void

    .line 17988
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->m7DigitNumericNumber:Ljava/lang/String;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->findRecipientFromTobutton(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15400(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->mId:I

    .line 17989
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->m7DigitNumericNumber:Ljava/lang/String;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->mId:I

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->remove7DigitRecipient(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15500(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;I)V

    .line 17990
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->m7DigitNumericNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17991
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 17994
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->mSendSimSlot:I

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2700(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    goto :goto_0

    .line 17986
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

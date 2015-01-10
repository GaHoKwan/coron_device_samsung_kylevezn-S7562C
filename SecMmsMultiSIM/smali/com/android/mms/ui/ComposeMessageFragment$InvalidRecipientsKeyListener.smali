.class Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsKeyListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidRecipientsKeyListener"
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
    .line 1995
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsKeyListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1996
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsKeyListener;->mInvalidRecipients:Ljava/lang/String;

    .line 1997
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2001
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2002
    sparse-switch p2, :sswitch_data_0

    .line 2024
    :cond_0
    const/4 v1, 0x0

    :goto_0
    :sswitch_0
    return v1

    .line 2005
    :sswitch_1
    if-eqz p1, :cond_1

    .line 2006
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2010
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsKeyListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2011
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsKeyListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsKeyListener;->mInvalidRecipients:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2012
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsKeyListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsKeyListener;->mInvalidRecipients:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 2007
    :catch_0
    move-exception v0

    .line 2008
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Mms/InvalidRecipientsListener"

    const-string v3, "Catch a IllegalArgumentException: "

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2002
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

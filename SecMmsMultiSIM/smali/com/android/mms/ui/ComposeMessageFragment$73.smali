.class Lcom/android/mms/ui/ComposeMessageFragment$73;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showChooseContactDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ChooseContactSelectorAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7631
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$73;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$73;->val$mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 7633
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$73;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$73;->val$mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/ChooseContactSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->chooseContact(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6600(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    .line 7635
    return-void
.end method

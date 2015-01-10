.class Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$3;
.super Ljava/lang/Object;
.source "InteractionPickerContactsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$702(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    .line 1203
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$800(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDoneButton(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$900(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;I)V

    .line 1204
    return-void
.end method

.class Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;
.super Ljava/lang/Object;
.source "InteractionPickerContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
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
    .line 324
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)I

    move-result v0

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)I

    move-result v0

    const/16 v1, 0xfa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)I

    move-result v0

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)I

    move-result v0

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)I

    move-result v0

    const/16 v1, 0x123

    if-ne v0, v1, :cond_1

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAllVcard()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAllContacts(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)V

    goto :goto_0
.end method

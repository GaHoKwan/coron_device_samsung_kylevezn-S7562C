.class Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;
.super Ljava/lang/Object;
.source "InteractionGroupMemberPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllPick()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->excuteSelectAllContacts(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)V

    goto :goto_0
.end method

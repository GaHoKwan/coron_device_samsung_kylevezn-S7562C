.class Lcom/android/contacts/detail/ContactDetailFragment$3;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 867
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$3;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$3;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$3;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;->execute()V

    .line 873
    :cond_0
    return-void
.end method

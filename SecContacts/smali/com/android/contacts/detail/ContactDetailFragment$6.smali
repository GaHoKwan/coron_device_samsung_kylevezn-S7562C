.class Lcom/android/contacts/detail/ContactDetailFragment$6;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;

.field final synthetic val$lookupUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$6;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$6;->val$lookupUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const v4, 0x7f09011e

    .line 1247
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$6;->val$lookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1248
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$6;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->toggle()V

    .line 1250
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$6;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$6;->val$lookupUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$6;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-static {v2, v3, v1}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1252
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$6;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1254
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.class Lcom/sec/android/app/contacts/preference/SendContactOptionFragment$1;
.super Ljava/lang/Object;
.source "SendContactOptionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/app/contacts/preference/SendContactOptionFragment$1;->this$0:Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/contacts/preference/SendContactOptionFragment$1;->this$0:Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->show(Landroid/app/FragmentManager;)V

    .line 61
    return-void
.end method

.class Lcom/android/contacts/detail/ContactDetailFragment$20;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->createSelectSimDialog(Ljava/lang/String;)V
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
    .line 2377
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$20;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 2380
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1402(Z)Z

    .line 2381
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1502(Z)Z

    .line 2382
    return-void
.end method

.class Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$1;
.super Ljava/lang/Object;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$1;->this$0:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$1;->this$0:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;

    #setter for: Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPos:I
    invoke-static {v0, p3}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->access$202(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;I)I

    .line 241
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

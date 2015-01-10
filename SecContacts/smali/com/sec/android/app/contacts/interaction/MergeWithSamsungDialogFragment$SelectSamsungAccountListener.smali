.class public Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$SelectSamsungAccountListener;
.super Ljava/lang/Object;
.source "MergeWithSamsungDialogFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectSamsungAccountListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$SelectSamsungAccountListener;->this$0:Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2
    .parameter "account"
    .parameter "extraArgs"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$SelectSamsungAccountListener;->this$0:Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$SelectSamsungAccountListener;->this$0:Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;

    #calls: Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mergeWithSamsung(Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->access$100(Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->showResultToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->access$200(Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.class public Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactInfoForAddToGroup"
.end annotation


# instance fields
.field public mGroupTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsGoogleAccount:Z

.field public mListGroupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 2648
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    .line 2651
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mGroupTitles:Ljava/util/ArrayList;

    return-void
.end method

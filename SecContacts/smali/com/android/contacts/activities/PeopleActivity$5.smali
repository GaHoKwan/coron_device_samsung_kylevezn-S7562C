.class synthetic Lcom/android/contacts/activities/PeopleActivity$5;
.super Ljava/lang/Object;
.source "PeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$contacts$list$ContactSplitRatioController$ContactSplitRatioListener$Operation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3921
    invoke-static {}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;->values()[Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity$5;->$SwitchMap$com$sec$android$app$contacts$list$ContactSplitRatioController$ContactSplitRatioListener$Operation:[I

    :try_start_0
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity$5;->$SwitchMap$com$sec$android$app$contacts$list$ContactSplitRatioController$ContactSplitRatioListener$Operation:[I

    sget-object v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;->START_CHANGING_SPLIT_RATIO:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity$5;->$SwitchMap$com$sec$android$app$contacts$list$ContactSplitRatioController$ContactSplitRatioListener$Operation:[I

    sget-object v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;->STOP_CHANGING_SPLIT_RATIO:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

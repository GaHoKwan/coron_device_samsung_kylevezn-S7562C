.class public Lcom/android/commands/am/Am;
.super Ljava/lang/Object;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/am/Am$1;,
        Lcom/android/commands/am/Am$InstrumentationWatcher;,
        Lcom/android/commands/am/Am$IntentReceiver;,
        Lcom/android/commands/am/Am$MyActivityController;
    }
.end annotation


# static fields
.field private static final FATAL_ERROR_CODE:Ljava/lang/String; = "Error type 1"

.field private static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field private static final NO_SYSTEM_ERROR_CODE:Ljava/lang/String; = "Error type 2"


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mNextArg:I

.field private mProfileFile:Ljava/lang/String;

.field private mRepeat:I

.field private mStartFlags:I

.field private mStopOption:Z

.field private mUserId:I

.field private mWaitOption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Lcom/android/commands/am/Am;->mStartFlags:I

    .line 61
    iput-boolean v0, p0, Lcom/android/commands/am/Am;->mWaitOption:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/commands/am/Am;->mStopOption:Z

    .line 64
    iput v0, p0, Lcom/android/commands/am/Am;->mRepeat:I

    .line 65
    iput v0, p0, Lcom/android/commands/am/Am;->mUserId:I

    .line 1156
    return-void
.end method

.method static synthetic access$200(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Lcom/android/commands/am/Am;

    invoke-direct {v1}, Lcom/android/commands/am/Am;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/commands/am/Am;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    .line 84
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 87
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private makeIntent()Landroid/content/Intent;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v13, intent:Landroid/content/Intent;
    move-object v3, v13

    .line 149
    .local v3, baseIntent:Landroid/content/Intent;
    const/4 v9, 0x0

    .line 151
    .local v9, hasIntentInfo:Z
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mStartFlags:I

    .line 152
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mWaitOption:Z

    .line 153
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mStopOption:Z

    .line 154
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mRepeat:I

    .line 155
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    .line 156
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mUserId:I

    .line 157
    const/4 v7, 0x0

    .line 158
    .local v7, data:Landroid/net/Uri;
    const/16 v19, 0x0

    .line 161
    .local v19, type:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v16

    .local v16, opt:Ljava/lang/String;
    if-eqz v16, :cond_37

    .line 162
    const-string v22, "-a"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    if-ne v13, v3, :cond_0

    .line 165
    const/4 v9, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const-string v22, "-d"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 169
    if-ne v13, v3, :cond_0

    .line 170
    const/4 v9, 0x1

    goto :goto_0

    .line 172
    :cond_2
    const-string v22, "-t"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 173
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v19

    .line 174
    if-ne v13, v3, :cond_0

    .line 175
    const/4 v9, 0x1

    goto :goto_0

    .line 177
    :cond_3
    const-string v22, "-c"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    if-ne v13, v3, :cond_0

    .line 180
    const/4 v9, 0x1

    goto :goto_0

    .line 182
    :cond_4
    const-string v22, "-e"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "--es"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 183
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 184
    .local v14, key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 185
    .local v21, value:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 186
    .end local v14           #key:Ljava/lang/String;
    .end local v21           #value:Ljava/lang/String;
    :cond_6
    const-string v22, "--esn"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 188
    .restart local v14       #key:Ljava/lang/String;
    const/16 v22, 0x0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 189
    .end local v14           #key:Ljava/lang/String;
    :cond_7
    const-string v22, "--ei"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 190
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 191
    .restart local v14       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 192
    .restart local v21       #value:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 193
    .end local v14           #key:Ljava/lang/String;
    .end local v21           #value:Ljava/lang/String;
    :cond_8
    const-string v22, "--eu"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 195
    .restart local v14       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 196
    .restart local v21       #value:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 197
    .end local v14           #key:Ljava/lang/String;
    .end local v21           #value:Ljava/lang/String;
    :cond_9
    const-string v22, "--ecn"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 199
    .restart local v14       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 200
    .restart local v21       #value:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 201
    .local v6, cn:Landroid/content/ComponentName;
    if-nez v6, :cond_a

    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Bad component name: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 202
    :cond_a
    invoke-virtual {v13, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 203
    .end local v6           #cn:Landroid/content/ComponentName;
    .end local v14           #key:Ljava/lang/String;
    .end local v21           #value:Ljava/lang/String;
    :cond_b
    const-string v22, "--eia"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 205
    .restart local v14       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 206
    .restart local v21       #value:Ljava/lang/String;
    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 207
    .local v18, strings:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v15, v0, [I

    .line 208
    .local v15, list:[I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_c

    .line 209
    aget-object v22, v18, v11

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    aput v22, v15, v11

    .line 208
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 211
    :cond_c
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 212
    .end local v11           #i:I
    .end local v14           #key:Ljava/lang/String;
    .end local v15           #list:[I
    .end local v18           #strings:[Ljava/lang/String;
    .end local v21           #value:Ljava/lang/String;
    :cond_d
    const-string v22, "--el"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 214
    .restart local v14       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 215
    .restart local v21       #value:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 216
    .end local v14           #key:Ljava/lang/String;
    .end local v21           #value:Ljava/lang/String;
    :cond_e
    const-string v22, "--ela"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 217
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 218
    .restart local v14       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 219
    .restart local v21       #value:Ljava/lang/String;
    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 220
    .restart local v18       #strings:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v15, v0, [J

    .line 221
    .local v15, list:[J
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_f

    .line 222
    aget-object v22, v18, v11

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    aput-wide v22, v15, v11

    .line 221
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 224
    :cond_f
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 225
    const/4 v9, 0x1

    .line 226
    goto/16 :goto_0

    .end local v11           #i:I
    .end local v14           #key:Ljava/lang/String;
    .end local v15           #list:[J
    .end local v18           #strings:[Ljava/lang/String;
    .end local v21           #value:Ljava/lang/String;
    :cond_10
    const-string v22, "--ef"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 228
    .restart local v14       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 229
    .restart local v21       #value:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 230
    const/4 v9, 0x1

    .line 231
    goto/16 :goto_0

    .end local v14           #key:Ljava/lang/String;
    .end local v21           #value:Ljava/lang/String;
    :cond_11
    const-string v22, "--efa"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 232
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 233
    .restart local v14       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 234
    .restart local v21       #value:Ljava/lang/String;
    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 235
    .restart local v18       #strings:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v15, v0, [F

    .line 236
    .local v15, list:[F
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_12

    .line 237
    aget-object v22, v18, v11

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    aput v22, v15, v11

    .line 236
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 239
    :cond_12
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 240
    const/4 v9, 0x1

    .line 241
    goto/16 :goto_0

    .end local v11           #i:I
    .end local v14           #key:Ljava/lang/String;
    .end local v15           #list:[F
    .end local v18           #strings:[Ljava/lang/String;
    .end local v21           #value:Ljava/lang/String;
    :cond_13
    const-string v22, "--ez"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 243
    .restart local v14       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 244
    .restart local v21       #value:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 245
    .end local v14           #key:Ljava/lang/String;
    .end local v21           #value:Ljava/lang/String;
    :cond_14
    const-string v22, "-n"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 246
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v17

    .line 247
    .local v17, str:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 248
    .restart local v6       #cn:Landroid/content/ComponentName;
    if-nez v6, :cond_15

    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Bad component name: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 249
    :cond_15
    invoke-virtual {v13, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 250
    if-ne v13, v3, :cond_0

    .line 251
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 253
    .end local v6           #cn:Landroid/content/ComponentName;
    .end local v17           #str:Ljava/lang/String;
    :cond_16
    const-string v22, "-f"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v17

    .line 255
    .restart local v17       #str:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 256
    .end local v17           #str:Ljava/lang/String;
    :cond_17
    const-string v22, "--grant-read-uri-permission"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 257
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 258
    :cond_18
    const-string v22, "--grant-write-uri-permission"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 259
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 260
    :cond_19
    const-string v22, "--exclude-stopped-packages"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 261
    const/16 v22, 0x10

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 262
    :cond_1a
    const-string v22, "--include-stopped-packages"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 263
    const/16 v22, 0x20

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 264
    :cond_1b
    const-string v22, "--debug-log-resolution"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 265
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 266
    :cond_1c
    const-string v22, "--activity-brought-to-front"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 267
    const/high16 v22, 0x40

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 268
    :cond_1d
    const-string v22, "--activity-clear-top"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 269
    const/high16 v22, 0x400

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 270
    :cond_1e
    const-string v22, "--activity-clear-when-task-reset"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 271
    const/high16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 272
    :cond_1f
    const-string v22, "--activity-exclude-from-recents"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 273
    const/high16 v22, 0x80

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 274
    :cond_20
    const-string v22, "--activity-launched-from-history"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    .line 275
    const/high16 v22, 0x10

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 276
    :cond_21
    const-string v22, "--activity-multiple-task"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_22

    .line 277
    const/high16 v22, 0x800

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 278
    :cond_22
    const-string v22, "--activity-no-animation"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23

    .line 279
    const/high16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 280
    :cond_23
    const-string v22, "--activity-no-history"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    .line 281
    const/high16 v22, 0x4000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 282
    :cond_24
    const-string v22, "--activity-no-user-action"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    .line 283
    const/high16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 284
    :cond_25
    const-string v22, "--activity-previous-is-top"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_26

    .line 285
    const/high16 v22, 0x100

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 286
    :cond_26
    const-string v22, "--activity-reorder-to-front"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    .line 287
    const/high16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 288
    :cond_27
    const-string v22, "--activity-reset-task-if-needed"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    .line 289
    const/high16 v22, 0x20

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 290
    :cond_28
    const-string v22, "--activity-single-top"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_29

    .line 291
    const/high16 v22, 0x2000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 292
    :cond_29
    const-string v22, "--activity-clear-task"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 293
    const v22, 0x8000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 294
    :cond_2a
    const-string v22, "--activity-task-on-home"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2b

    .line 295
    const/16 v22, 0x4000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 296
    :cond_2b
    const-string v22, "--receiver-registered-only"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2c

    .line 297
    const/high16 v22, 0x4000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 298
    :cond_2c
    const-string v22, "--receiver-replace-pending"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 299
    const/high16 v22, 0x2000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 300
    :cond_2d
    const-string v22, "--selector"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2e

    .line 301
    move-object/from16 v0, v19

    invoke-virtual {v13, v7, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    new-instance v13, Landroid/content/Intent;

    .end local v13           #intent:Landroid/content/Intent;
    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .restart local v13       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 303
    :cond_2e
    const-string v22, "-D"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 304
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mStartFlags:I

    goto/16 :goto_0

    .line 305
    :cond_2f
    const-string v22, "-W"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_30

    .line 306
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mWaitOption:Z

    goto/16 :goto_0

    .line 307
    :cond_30
    const-string v22, "-P"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_31

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x8

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mStartFlags:I

    goto/16 :goto_0

    .line 310
    :cond_31
    const-string v22, "--start-profiler"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_32

    .line 311
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x9

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mStartFlags:I

    goto/16 :goto_0

    .line 313
    :cond_32
    const-string v22, "-R"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_33

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mRepeat:I

    goto/16 :goto_0

    .line 315
    :cond_33
    const-string v22, "-S"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_34

    .line 316
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mStopOption:Z

    goto/16 :goto_0

    .line 317
    :cond_34
    const-string v22, "--opengl-trace"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_35

    .line 318
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mStartFlags:I

    goto/16 :goto_0

    .line 319
    :cond_35
    const-string v22, "--user"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_36

    .line 320
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/am/Am;->mUserId:I

    goto/16 :goto_0

    .line 322
    :cond_36
    sget-object v22, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error: Unknown option: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    .line 324
    const/16 v22, 0x0

    .line 387
    :goto_4
    return-object v22

    .line 327
    :cond_37
    move-object/from16 v0, v19

    invoke-virtual {v13, v7, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    if-eq v13, v3, :cond_3a

    const/4 v10, 0x1

    .line 330
    .local v10, hasSelector:Z
    :goto_5
    if-eqz v10, :cond_38

    .line 332
    invoke-virtual {v3, v13}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 333
    move-object v13, v3

    .line 336
    :cond_38
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, arg:Ljava/lang/String;
    const/4 v3, 0x0

    .line 338
    if-nez v2, :cond_3b

    .line 339
    if-eqz v10, :cond_39

    .line 345
    new-instance v3, Landroid/content/Intent;

    .end local v3           #baseIntent:Landroid/content/Intent;
    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .restart local v3       #baseIntent:Landroid/content/Intent;
    const-string v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    :cond_39
    :goto_6
    if-eqz v3, :cond_40

    .line 365
    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 366
    .local v8, extras:Landroid/os/Bundle;
    const/16 v22, 0x0

    check-cast v22, Landroid/os/Bundle;

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 367
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    .line 368
    .local v20, uriExtras:Landroid/os/Bundle;
    const/16 v22, 0x0

    check-cast v22, Landroid/os/Bundle;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 369
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_3e

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v22

    if-eqz v22, :cond_3e

    .line 370
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 371
    .local v5, cats:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 372
    .local v4, c:Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    goto :goto_7

    .line 329
    .end local v2           #arg:Ljava/lang/String;
    .end local v4           #c:Ljava/lang/String;
    .end local v5           #cats:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v10           #hasSelector:Z
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v20           #uriExtras:Landroid/os/Bundle;
    :cond_3a
    const/4 v10, 0x0

    goto :goto_5

    .line 348
    .restart local v2       #arg:Ljava/lang/String;
    .restart local v10       #hasSelector:Z
    :cond_3b
    const/16 v22, 0x3a

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    if-ltz v22, :cond_3c

    .line 351
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-static {v2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    goto :goto_6

    .line 352
    :cond_3c
    const/16 v22, 0x2f

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    if-ltz v22, :cond_3d

    .line 355
    new-instance v3, Landroid/content/Intent;

    .end local v3           #baseIntent:Landroid/content/Intent;
    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .restart local v3       #baseIntent:Landroid/content/Intent;
    const-string v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_6

    .line 360
    :cond_3d
    new-instance v3, Landroid/content/Intent;

    .end local v3           #baseIntent:Landroid/content/Intent;
    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .restart local v3       #baseIntent:Landroid/content/Intent;
    const-string v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_6

    .line 375
    .restart local v8       #extras:Landroid/os/Bundle;
    .restart local v20       #uriExtras:Landroid/os/Bundle;
    :cond_3e
    const/16 v22, 0x48

    move/from16 v0, v22

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 376
    if-nez v8, :cond_41

    .line 377
    move-object/from16 v8, v20

    .line 382
    :cond_3f
    :goto_8
    invoke-virtual {v13, v8}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 383
    const/4 v9, 0x1

    .line 386
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v20           #uriExtras:Landroid/os/Bundle;
    :cond_40
    if-nez v9, :cond_42

    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "No intent supplied"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 378
    .restart local v8       #extras:Landroid/os/Bundle;
    .restart local v20       #uriExtras:Landroid/os/Bundle;
    :cond_41
    if-eqz v20, :cond_3f

    .line 379
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 380
    move-object/from16 v8, v20

    goto :goto_8

    .end local v8           #extras:Landroid/os/Bundle;
    .end local v20           #uriExtras:Landroid/os/Bundle;
    :cond_42
    move-object/from16 v22, v13

    .line 387
    goto/16 :goto_4
.end method

.method private nextArg()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1262
    iget-object v2, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    .line 1264
    .local v0, arg:Ljava/lang/String;
    iput-object v1, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    .line 1269
    .end local v0           #arg:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1266
    :cond_0
    iget v2, p0, Lcom/android/commands/am/Am;->mNextArg:I

    iget-object v3, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1267
    iget-object v1, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/am/Am;->mNextArg:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/commands/am/Am;->mNextArg:I

    aget-object v0, v1, v2

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1269
    goto :goto_0
.end method

.method private nextArgRequired()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1274
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 1275
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1276
    iget-object v2, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/commands/am/Am;->mNextArg:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 1277
    .local v1, prev:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1279
    .end local v1           #prev:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private nextOption()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 1233
    iget-object v3, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1234
    iget-object v2, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/commands/am/Am;->mNextArg:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 1235
    .local v1, prev:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1237
    .end local v1           #prev:Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/android/commands/am/Am;->mNextArg:I

    iget-object v4, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_1

    move-object v0, v2

    .line 1258
    :goto_0
    return-object v0

    .line 1240
    :cond_1
    iget-object v3, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    iget v4, p0, Lcom/android/commands/am/Am;->mNextArg:I

    aget-object v0, v3, v4

    .line 1241
    .local v0, arg:Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v2

    .line 1242
    goto :goto_0

    .line 1244
    :cond_2
    iget v3, p0, Lcom/android/commands/am/Am;->mNextArg:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/commands/am/Am;->mNextArg:I

    .line 1245
    const-string v3, "--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 1246
    goto :goto_0

    .line 1248
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_5

    .line 1249
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_4

    .line 1250
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    .line 1251
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1253
    :cond_4
    iput-object v2, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    goto :goto_0

    .line 1257
    :cond_5
    iput-object v2, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    goto :goto_0
.end method

.method static removeWallOption()V
    .locals 3

    .prologue
    .line 631
    const-string v1, "dalvik.vm.extra-opts"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, props:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "-Xprofile:wallclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    const-string v1, "-Xprofile:wallclock"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 635
    const-string v1, "dalvik.vm.extra-opts"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_0
    return-void
.end method

.method private run([Ljava/lang/String;)V
    .locals 4
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 92
    array-length v1, p1

    if-ge v1, v2, :cond_0

    .line 93
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    .line 144
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    .line 98
    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    if-nez v1, :cond_1

    .line 99
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error type 2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    new-instance v1, Landroid/util/AndroidException;

    const-string v2, "Can\'t connect to activity manager; is the system running?"

    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    iput-object p1, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    .line 104
    aget-object v0, p1, v3

    .line 105
    .local v0, op:Ljava/lang/String;
    iput v2, p0, Lcom/android/commands/am/Am;->mNextArg:I

    .line 107
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStart()V

    goto :goto_0

    .line 109
    :cond_2
    const-string v1, "startservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStartService()V

    goto :goto_0

    .line 111
    :cond_3
    const-string v1, "force-stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runForceStop()V

    goto :goto_0

    .line 113
    :cond_4
    const-string v1, "kill"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 114
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runKill()V

    goto :goto_0

    .line 115
    :cond_5
    const-string v1, "kill-all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 116
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runKillAll()V

    goto :goto_0

    .line 117
    :cond_6
    const-string v1, "instrument"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 118
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runInstrument()V

    goto :goto_0

    .line 119
    :cond_7
    const-string v1, "broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 120
    invoke-direct {p0}, Lcom/android/commands/am/Am;->sendBroadcast()V

    goto :goto_0

    .line 121
    :cond_8
    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 122
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runProfile()V

    goto :goto_0

    .line 123
    :cond_9
    const-string v1, "dumpheap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 124
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runDumpHeap()V

    goto/16 :goto_0

    .line 125
    :cond_a
    const-string v1, "set-debug-app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 126
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runSetDebugApp()V

    goto/16 :goto_0

    .line 127
    :cond_b
    const-string v1, "clear-debug-app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 128
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runClearDebugApp()V

    goto/16 :goto_0

    .line 129
    :cond_c
    const-string v1, "monitor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 130
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runMonitor()V

    goto/16 :goto_0

    .line 131
    :cond_d
    const-string v1, "screen-compat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 132
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runScreenCompat()V

    goto/16 :goto_0

    .line 133
    :cond_e
    const-string v1, "display-size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 134
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runDisplaySize()V

    goto/16 :goto_0

    .line 135
    :cond_f
    const-string v1, "to-uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 136
    invoke-direct {p0, v3}, Lcom/android/commands/am/Am;->runToUri(Z)V

    goto/16 :goto_0

    .line 137
    :cond_10
    const-string v1, "to-intent-uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 138
    invoke-direct {p0, v2}, Lcom/android/commands/am/Am;->runToUri(Z)V

    goto/16 :goto_0

    .line 139
    :cond_11
    const-string v1, "switch-user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 140
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runSwitchUser()V

    goto/16 :goto_0

    .line 142
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private runClearDebugApp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 749
    return-void
.end method

.method private runDisplaySize()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1082
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 1084
    .local v6, size:Ljava/lang/String;
    const-string v9, "reset"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1085
    const/4 v4, -0x1

    .local v4, n:I
    move v2, v4

    .line 1105
    .local v2, m:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1106
    move v7, v2

    .line 1107
    .local v7, tmp:I
    move v2, v4

    .line 1108
    move v4, v7

    .line 1111
    .end local v7           #tmp:I
    :cond_0
    const-string v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v8

    .line 1113
    .local v8, wm:Landroid/view/IWindowManager;
    if-nez v8, :cond_4

    .line 1114
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Error type 2"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1115
    new-instance v9, Landroid/util/AndroidException;

    const-string v10, "Can\'t connect to window manager; is the system running?"

    invoke-direct {v9, v10}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1087
    .end local v2           #m:I
    .end local v4           #n:I
    .end local v8           #wm:Landroid/view/IWindowManager;
    :cond_1
    const/16 v9, 0x78

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1088
    .local v0, div:I
    if-lez v0, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-lt v0, v9, :cond_3

    .line 1089
    :cond_2
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1090
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    .line 1126
    .end local v0           #div:I
    :goto_1
    return-void

    .line 1093
    .restart local v0       #div:I
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1094
    .local v3, mstr:Ljava/lang/String;
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1096
    .local v5, nstr:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1097
    .restart local v2       #m:I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .restart local v4       #n:I
    goto :goto_0

    .line 1098
    .end local v2           #m:I
    .end local v4           #n:I
    :catch_0
    move-exception v1

    .line 1099
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad number "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1100
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    goto :goto_1

    .line 1119
    .end local v0           #div:I
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #mstr:Ljava/lang/String;
    .end local v5           #nstr:Ljava/lang/String;
    .restart local v2       #m:I
    .restart local v4       #n:I
    .restart local v8       #wm:Landroid/view/IWindowManager;
    :cond_4
    if-ltz v2, :cond_5

    if-ltz v4, :cond_5

    .line 1120
    :try_start_1
    invoke-interface {v8, v2, v4}, Landroid/view/IWindowManager;->setForcedDisplaySize(II)V

    goto :goto_1

    .line 1124
    :catch_1
    move-exception v9

    goto :goto_1

    .line 1122
    :cond_5
    invoke-interface {v8}, Landroid/view/IWindowManager;->clearForcedDisplaySize()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1
.end method

.method private runDumpHeap()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 705
    const-string v5, "-n"

    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    .line 706
    .local v3, managed:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 707
    .local v4, process:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, heapFile:Ljava/lang/String;
    const/4 v1, 0x0

    .line 711
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x3c00

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 721
    iget-object v5, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v5, v4, v3, v2, v1}, Landroid/app/IActivityManager;->dumpHeap(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 722
    new-instance v5, Landroid/util/AndroidException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HEAP DUMP FAILED on process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 705
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #heapFile:Ljava/lang/String;
    .end local v3           #managed:Z
    .end local v4           #process:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 716
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #heapFile:Ljava/lang/String;
    .restart local v3       #managed:Z
    .restart local v4       #process:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 717
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unable to open file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 724
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    return-void
.end method

.method private runForceStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method private runInstrument()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 569
    const/4 v3, 0x0

    .line 570
    .local v3, profileFile:Ljava/lang/String;
    const/4 v14, 0x0

    .line 571
    .local v14, wait:Z
    const/4 v13, 0x0

    .line 572
    .local v13, rawMode:Z
    const/4 v10, 0x0

    .line 573
    .local v10, no_window_animation:Z
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 574
    .local v5, args:Landroid/os/Bundle;
    const/4 v7, 0x0

    .local v7, argKey:Ljava/lang/String;
    const/4 v8, 0x0

    .line 575
    .local v8, argValue:Ljava/lang/String;
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v15

    .line 578
    .local v15, wm:Landroid/view/IWindowManager;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v12

    .local v12, opt:Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 579
    const-string v1, "-p"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 581
    :cond_0
    const-string v1, "-w"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 582
    const/4 v14, 0x1

    goto :goto_0

    .line 583
    :cond_1
    const-string v1, "-r"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 584
    const/4 v13, 0x1

    goto :goto_0

    .line 585
    :cond_2
    const-string v1, "-e"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 586
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 587
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 588
    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_3
    const-string v1, "--no_window_animation"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "--no-window-animation"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 591
    :cond_4
    const/4 v10, 0x1

    goto :goto_0

    .line 593
    :cond_5
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error: Unknown option: "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 594
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    .line 628
    :cond_6
    :goto_1
    return-void

    .line 599
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 600
    .local v9, cnArg:Ljava/lang/String;
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 601
    .local v2, cn:Landroid/content/ComponentName;
    if-nez v2, :cond_8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad component name: "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :cond_8
    const/4 v6, 0x0

    .line 604
    .local v6, watcher:Lcom/android/commands/am/Am$InstrumentationWatcher;
    if-eqz v14, :cond_9

    .line 605
    new-instance v6, Lcom/android/commands/am/Am$InstrumentationWatcher;

    .end local v6           #watcher:Lcom/android/commands/am/Am$InstrumentationWatcher;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v1}, Lcom/android/commands/am/Am$InstrumentationWatcher;-><init>(Lcom/android/commands/am/Am;Lcom/android/commands/am/Am$1;)V

    .line 606
    .restart local v6       #watcher:Lcom/android/commands/am/Am$InstrumentationWatcher;
    invoke-virtual {v6, v13}, Lcom/android/commands/am/Am$InstrumentationWatcher;->setRawOutput(Z)V

    .line 608
    :cond_9
    const/4 v11, 0x0

    .line 609
    .local v11, oldAnims:[F
    if-eqz v10, :cond_a

    .line 610
    invoke-interface {v15}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v11

    .line 611
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-interface {v15, v1, v4}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 612
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {v15, v1, v4}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 615
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 616
    new-instance v1, Landroid/util/AndroidException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "INSTRUMENTATION_FAILED: "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :cond_b
    if-eqz v6, :cond_c

    .line 620
    invoke-virtual {v6}, Lcom/android/commands/am/Am$InstrumentationWatcher;->waitForFinish()Z

    move-result v1

    if-nez v1, :cond_c

    .line 621
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "INSTRUMENTATION_ABORTED: System has crashed."

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 625
    :cond_c
    if-eqz v11, :cond_6

    .line 626
    invoke-interface {v15, v11}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    goto/16 :goto_1
.end method

.method private runKill()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method private runKillAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V

    .line 557
    return-void
.end method

.method private runMonitor()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1041
    const/4 v1, 0x0

    .line 1042
    .local v1, gdbPort:Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v2

    .local v2, opt:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1043
    const-string v3, "--gdb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1044
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1046
    :cond_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1047
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    .line 1054
    :goto_1
    return-void

    .line 1052
    :cond_1
    new-instance v0, Lcom/android/commands/am/Am$MyActivityController;

    invoke-direct {v0, p0, v1}, Lcom/android/commands/am/Am$MyActivityController;-><init>(Lcom/android/commands/am/Am;Ljava/lang/String;)V

    .line 1053
    .local v0, controller:Lcom/android/commands/am/Am$MyActivityController;
    invoke-virtual {v0}, Lcom/android/commands/am/Am$MyActivityController;->run()V

    goto :goto_1
.end method

.method private runProfile()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 640
    const/4 v3, 0x0

    .line 641
    .local v3, profileFile:Ljava/lang/String;
    const/4 v2, 0x0

    .line 642
    .local v2, start:Z
    const/4 v9, 0x0

    .line 643
    .local v9, wall:Z
    const/4 v5, 0x0

    .line 645
    .local v5, profileType:I
    const/4 v1, 0x0

    .line 647
    .local v1, process:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 649
    .local v6, cmd:Ljava/lang/String;
    const-string v0, "start"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 650
    const/4 v2, 0x1

    .line 651
    const-string v0, "--wall"

    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 652
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 666
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 668
    .local v4, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 669
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 671
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x3c00

    invoke-static {v0, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 683
    :cond_1
    if-eqz v9, :cond_9

    .line 685
    :try_start_1
    const-string v0, "dalvik.vm.extra-opts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 686
    .local v8, props:Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string v0, "-Xprofile:wallclock"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 687
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " -Xprofile:wallclock"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    .end local v8           #props:Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 694
    const/4 v9, 0x0

    .line 695
    new-instance v0, Landroid/util/AndroidException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PROFILE FAILED on process "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    :catchall_0
    move-exception v0

    if-nez v9, :cond_4

    :cond_4
    throw v0

    .line 653
    .end local v4           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_5
    const-string v0, "stop"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 654
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 657
    :cond_6
    move-object v1, v6

    .line 658
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 659
    const-string v0, "start"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 660
    const/4 v2, 0x1

    goto :goto_0

    .line 661
    :cond_7
    const-string v0, "stop"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Profile command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not valid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    .restart local v4       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v7

    .line 677
    .local v7, e:Ljava/io/FileNotFoundException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: Unable to open file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 702
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :cond_8
    :goto_2
    return-void

    .line 690
    :cond_9
    if-eqz v2, :cond_3

    goto/16 :goto_1

    .line 698
    :cond_a
    if-nez v9, :cond_8

    goto :goto_2
.end method

.method private runScreenCompat()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1057
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 1059
    .local v1, mode:Ljava/lang/String;
    const-string v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1060
    const/4 v0, 0x1

    .line 1069
    .local v0, enabled:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1072
    .local v2, packageName:Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v4, v2, v3}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    :goto_2
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 1078
    if-nez v2, :cond_0

    .line 1079
    .end local v0           #enabled:Z
    .end local v2           #packageName:Ljava/lang/String;
    :goto_3
    return-void

    .line 1061
    :cond_1
    const-string v3, "off"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1062
    const/4 v0, 0x0

    .restart local v0       #enabled:Z
    goto :goto_0

    .line 1064
    .end local v0           #enabled:Z
    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: enabled mode must be \'on\' or \'off\' at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1065
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    goto :goto_3

    .line 1072
    .restart local v0       #enabled:Z
    .restart local v2       #packageName:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1075
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private runSetDebugApp()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 727
    const/4 v3, 0x0

    .line 728
    .local v3, wait:Z
    const/4 v1, 0x0

    .line 731
    .local v1, persistent:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v0

    .local v0, opt:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 732
    const-string v4, "-w"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 733
    const/4 v3, 0x1

    goto :goto_0

    .line 734
    :cond_0
    const-string v4, "--persistent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 735
    const/4 v1, 0x1

    goto :goto_0

    .line 737
    :cond_1
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 738
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    .line 745
    :goto_1
    return-void

    .line 743
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 744
    .local v2, pkg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v4, v2, v3, v1}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    goto :goto_1
.end method

.method private runStart()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 400
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v3

    .line 402
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, mimeType:Ljava/lang/String;
    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "content"

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 409
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/commands/am/Am;->mStopOption:Z

    if-eqz v1, :cond_1

    .line 411
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 412
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 433
    .local v16, packageName:Ljava/lang/String;
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 435
    const-wide/16 v1, 0xfa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 438
    .end local v16           #packageName:Ljava/lang/String;
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 439
    const/high16 v1, 0x1000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 441
    const/4 v10, 0x0

    .line 443
    .local v10, fd:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 445
    :try_start_0
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x3c00

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 456
    :cond_2
    const/16 v19, 0x0

    .line 458
    .local v19, result:Landroid/app/IActivityManager$WaitResult;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/commands/am/Am;->mWaitOption:Z

    if-eqz v1, :cond_e

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->startActivityAndWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)Landroid/app/IActivityManager$WaitResult;

    move-result-object v19

    .line 461
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/IActivityManager$WaitResult;->result:I

    move/from16 v18, v0

    .line 466
    .local v18, res:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/commands/am/Am;->mWaitOption:Z

    if-eqz v1, :cond_f

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 467
    .local v15, out:Ljava/io/PrintStream;
    :goto_2
    const/4 v14, 0x0

    .line 468
    .local v14, launched:Z
    packed-switch v18, :pswitch_data_0

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Activity not started, unknown error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 523
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/commands/am/Am;->mWaitOption:Z

    if-eqz v1, :cond_7

    if-eqz v14, :cond_7

    .line 524
    if-nez v19, :cond_3

    .line 525
    new-instance v19, Landroid/app/IActivityManager$WaitResult;

    .end local v19           #result:Landroid/app/IActivityManager$WaitResult;
    invoke-direct/range {v19 .. v19}, Landroid/app/IActivityManager$WaitResult;-><init>()V

    .line 526
    .restart local v19       #result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 528
    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-boolean v1, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-eqz v1, :cond_10

    const-string v1, "timeout"

    :goto_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    .line 530
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 532
    :cond_4
    move-object/from16 v0, v19

    iget-wide v1, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-ltz v1, :cond_5

    .line 533
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ThisTime: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-wide v5, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 535
    :cond_5
    move-object/from16 v0, v19

    iget-wide v1, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-ltz v1, :cond_6

    .line 536
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TotalTime: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-wide v5, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 538
    :cond_6
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Complete"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 540
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/commands/am/Am;->mRepeat:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/commands/am/Am;->mRepeat:I

    .line 541
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/commands/am/Am;->mRepeat:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_8

    .line 542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->unhandledBack()V

    .line 544
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/commands/am/Am;->mRepeat:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 545
    .end local v10           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v14           #launched:Z
    .end local v15           #out:Ljava/io/PrintStream;
    .end local v18           #res:I
    .end local v19           #result:Landroid/app/IActivityManager$WaitResult;
    :goto_5
    return-void

    .line 414
    :cond_9
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v17

    .line 416
    .local v17, pm:Landroid/content/pm/IPackageManager;
    if-nez v17, :cond_a

    .line 417
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: Package manager not running; aborting"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 420
    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/am/Am;->mUserId:I

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v12

    .line 422
    .local v12, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v12, :cond_b

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_c

    .line 423
    :cond_b
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Intent does not match any activities: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 426
    :cond_c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_d

    .line 427
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Intent matches multiple activities; can\'t stop: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 431
    :cond_d
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .restart local v16       #packageName:Ljava/lang/String;
    goto/16 :goto_0

    .line 450
    .end local v12           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16           #packageName:Ljava/lang/String;
    .end local v17           #pm:Landroid/content/pm/IPackageManager;
    .restart local v10       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v13

    .line 451
    .local v13, e:Ljava/io/FileNotFoundException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unable to open file: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 463
    .end local v13           #e:Ljava/io/FileNotFoundException;
    .restart local v19       #result:Landroid/app/IActivityManager$WaitResult;
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/commands/am/Am;->mStartFlags:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/commands/am/Am;->mProfileFile:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v18

    .restart local v18       #res:I
    goto/16 :goto_1

    .line 466
    :cond_f
    sget-object v15, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto/16 :goto_2

    .line 470
    .restart local v14       #launched:Z
    .restart local v15       #out:Ljava/io/PrintStream;
    :pswitch_0
    const/4 v14, 0x1

    .line 471
    goto/16 :goto_3

    .line 473
    :pswitch_1
    const/4 v14, 0x1

    .line 474
    const-string v1, "Warning: Activity not started because the  current activity is being kept for the user."

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 479
    :pswitch_2
    const/4 v14, 0x1

    .line 480
    const-string v1, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 486
    :pswitch_3
    const/4 v14, 0x1

    .line 487
    const-string v1, "Warning: Activity not started because intent should be handled by the caller"

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 492
    :pswitch_4
    const/4 v14, 0x1

    .line 493
    const-string v1, "Warning: Activity not started, its current task has been brought to the front"

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 498
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Activity not started, unable to resolve "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 503
    :pswitch_6
    const-string v1, "Error type 3"

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Activity class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 509
    :pswitch_7
    const-string v1, "Error: Activity not started, you requested to both forward and receive its result"

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 514
    :pswitch_8
    const-string v1, "Error: Activity not started, you do not have permission to access it."

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 528
    :cond_10
    const-string v1, "ok"

    goto/16 :goto_4

    .line 468
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private runStartService()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/android/commands/am/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 392
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 394
    .local v0, cn:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 395
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Not found; no service started."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    :cond_0
    return-void
.end method

.method private runSwitchUser()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 752
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "switchuser can only be run as root"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 755
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, user:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 757
    return-void
.end method

.method private runToUri(Z)V
    .locals 3
    .parameter "intentScheme"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1129
    invoke-direct {p0}, Lcom/android/commands/am/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1130
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1131
    return-void

    .line 1130
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendBroadcast()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 560
    invoke-direct {p0}, Lcom/android/commands/am/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 561
    .local v2, intent:Landroid/content/Intent;
    new-instance v4, Lcom/android/commands/am/Am$IntentReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/commands/am/Am$IntentReceiver;-><init>(Lcom/android/commands/am/Am;Lcom/android/commands/am/Am$1;)V

    .line 563
    .local v4, receiver:Lcom/android/commands/am/Am$IntentReceiver;
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v9, 0x1

    iget v11, p0, Lcom/android/commands/am/Am;->mUserId:I

    move-object v3, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move v10, v5

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I

    .line 565
    invoke-virtual {v4}, Lcom/android/commands/am/Am$IntentReceiver;->waitForFinish()V

    .line 566
    return-void
.end method

.method private static showUsage()V
    .locals 2

    .prologue
    .line 1283
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: am [subcommand] [options]\nusage: am start [-D] [-W] [-P <FILE>] [--start-profiler <FILE>]\n               [--R COUNT] [-S] [--opengl-trace] <INTENT>\n       am startservice <INTENT>\n       am force-stop <PACKAGE>\n       am kill <PACKAGE>\n       am kill-all\n       am broadcast <INTENT>\n       am instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]\n               [--no-window-animation] <COMPONENT>\n       am profile start <PROCESS> <FILE>\n       am profile stop [<PROCESS>]\n       am dumpheap [flags] <PROCESS> <FILE>\n       am set-debug-app [-w] [--persistent] <PACKAGE>\n       am clear-debug-app\n       am monitor [--gdb <port>]\n       am screen-compat [on|off] <PACKAGE>\n       am display-size [reset|MxN]\n       am to-uri [INTENT]\n       am to-intent-uri [INTENT]\n\nam start: start an Activity.  Options are:\n    -D: enable debugging\n    -W: wait for launch to complete\n    --start-profiler <FILE>: start profiler and send results to <FILE>\n    -P <FILE>: like above, but profiling stops when app goes idle\n    -R: repeat the activity launch <COUNT> times.  Prior to each repeat,\n        the top activity will be finished.\n    -S: force stop the target app before starting the activity\n    --opengl-trace: enable tracing of OpenGL functions\n\nam startservice: start a Service.\n\nam force-stop: force stop everything associated with <PACKAGE>.\n\nam kill: Kill all processes associated with <PACKAGE>.  Only kills.\n  processes that are safe to kill -- that is, will not impact the user\n  experience.\n\nam kill-all: Kill all background processes.\n\nam broadcast: send a broadcast Intent.\n\nam instrument: start an Instrumentation.  Typically this target <COMPONENT>\n  is the form <TEST_PACKAGE>/<RUNNER_CLASS>.  Options are:\n    -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT).  Use with\n        [-e perf true] to generate raw output for performance measurements.\n    -e <NAME> <VALUE>: set argument <NAME> to <VALUE>.  For test runners a\n        common form is [-e <testrunner_flag> <value>[,<value>...]].\n    -p <FILE>: write profiling data to <FILE>\n    -w: wait for instrumentation to finish before returning.  Required for\n        test runners.\n    --no-window-animation: turn off window animations will running.\n\nam profile: start and stop profiler on a process.\n\nam dumpheap: dump the heap of a process.  Options are:\n    -n: dump native heap instead of managed heap\n\nam set-debug-app: set application <PACKAGE> to debug.  Options are:\n    -w: wait for debugger when application starts\n    --persistent: retain this value\n\nam clear-debug-app: clear the previously set-debug-app.\n\nam monitor: start monitoring for crashes or ANRs.\n    --gdb: start gdbserv on the given port at crash/ANR\n\nam screen-compat: control screen compatibility mode of <PACKAGE>.\n\nam display-size: override display size.\n\nam to-uri: print the given Intent specification as a URI.\n\nam to-intent-uri: print the given Intent specification as an intent: URI.\n\n<INTENT> specifications include these flags and arguments:\n    [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>]\n    [-c <CATEGORY> [-c <CATEGORY>] ...]\n    [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]\n    [--esn <EXTRA_KEY> ...]\n    [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]\n    [--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]\n    [--el <EXTRA_KEY> <EXTRA_LONG_VALUE> ...]\n    [--ef <EXTRA_KEY> <EXTRA_FLOAT_VALUE> ...]\n    [--eu <EXTRA_KEY> <EXTRA_URI_VALUE> ...]\n    [--ecn <EXTRA_KEY> <EXTRA_COMPONENT_NAME_VALUE>]\n    [--eia <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]\n    [--ela <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]\n    [--efa <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]\n    [-n <COMPONENT>] [-f <FLAGS>]\n    [--grant-read-uri-permission] [--grant-write-uri-permission]\n    [--debug-log-resolution] [--exclude-stopped-packages]\n    [--include-stopped-packages]\n    [--activity-brought-to-front] [--activity-clear-top]\n    [--activity-clear-when-task-reset] [--activity-exclude-from-recents]\n    [--activity-launched-from-history] [--activity-multiple-task]\n    [--activity-no-animation] [--activity-no-history]\n    [--activity-no-user-action] [--activity-previous-is-top]\n    [--activity-reorder-to-front] [--activity-reset-task-if-needed]\n    [--activity-single-top] [--activity-clear-task]\n    [--activity-task-on-home]\n    [--receiver-registered-only] [--receiver-replace-pending]\n    [--selector]\n    [<URI> | <PACKAGE> | <COMPONENT>]\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1390
    return-void
.end method

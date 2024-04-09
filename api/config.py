import json
import logging
import os
import sys

from dotenv import find_dotenv, load_dotenv
from fastapi import FastAPI

# load env variables
load_dotenv(find_dotenv(), verbose=True)

# get env variables
# TODO: convert to pydantid_settings
token = os.environ.get("token")
detector_api = os.environ.get("detector_api")
secret_token = os.environ.get("secret_token")
private_api = os.environ.get("private_api")

assert token is not None
assert detector_api is not None
assert secret_token is not None
assert private_api is not None

# TODO: move to app.py // rename that to server.py
app = FastAPI()

# TODO: move to logging_config.py
# setup logging
formatter = logging.Formatter(
    json.dumps(
        {
            "ts": "%(asctime)s",
            "name": "%(name)s",
            "function": "%(funcName)s",
            "level": "%(levelname)s",
            "msg": json.dumps("%(message)s"),
        }
    )
)

stream_handler = logging.StreamHandler(sys.stdout)

stream_handler.setFormatter(formatter)

handlers = [stream_handler]

logging.basicConfig(level=logging.DEBUG, handlers=handlers)


# logging.getLogger("requests").setLevel(logging.DEBUG)
# logging.getLogger("urllib3").setLevel(logging.WARNING)
# logging.getLogger("uvicorn").setLevel(logging.DEBUG)
# logging.getLogger("uvicorn.error").propagate = False

BATCH_AMOUNT = 5_000

LABELS = [
    "Real_Player",
    "PVM_Melee_bot",
    "Smithing_bot",
    "Magic_bot",
    "Fishing_bot",
    "Mining_bot",
    "Crafting_bot",
    "PVM_Ranged_Magic_bot",
    "Hunter_bot",
    "Fletching_bot",
    "LMS_bot",
    "Agility_bot",
    "Wintertodt_bot",
    "Runecrafting_bot",
    "Zalcano_bot",
    "Woodcutting_bot",
    "Thieving_bot",
    "Soul_Wars_bot",
    "Cooking_bot",
    "Vorkath_bot",
    "Barrows_bot",
    "Herblore_bot",
    "Zulrah_bot",
    "Unknown_bot",
    "Gauntlet_bot",
    "Nex_bot",
]

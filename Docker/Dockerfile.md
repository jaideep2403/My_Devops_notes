FROM - underlying instruction on top of which everything is built
q* setting local repo , multi stage build

RUN - execute any command by using run
new layer gets created on existing image (sha 256)

ENV - environment variable, define key value , persist inside image

COPY - copy files from server to inside container (provide ownership)
ADD - download , copy files , url based

EXPOSE - port on which app is running
WORKDIR - following commands to be executed inside this dir

USER - when container starts , default user by which you will login
* app users should be able to run commands

LABELS - metadata on top of image

CMD - executable command when the container starts , it gets overridden , gets replaced by command given at runtime
ENTRYPOINT - it appends the command as an arguement instead of replacing 
             - must have one binary/executable to execute everytime the container starta
*cannot have multiple cmd and entrypoints instructions, the one at last given prefrence
entrypoint command part , cmd args

